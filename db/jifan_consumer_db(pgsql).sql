
/*==============================================================*/
/* Table: app_user                                              */
/*==============================================================*/
create table app_user (
   id                   VARCHAR(38)          not null,
   weixinid             VARCHAR(50)          null,
   loginname            VARCHAR(20)          null,
   password             VARCHAR(32)          null,
   imgeurl              VARCHAR(254)         null,
   nickname             VARCHAR(30)          null,
   truename             VARCHAR(20)          null,
   phone                VARCHAR(20)          null,
   sex                  VARCHAR(10)          null,
   states               VARCHAR(20)          null,
   isonline             BOOL                 null,
   createtime           TIMESTAMP            null,
   constraint PK_APP_USER primary key (id)
);

comment on table app_user is
'app_user  �ͻ����û�';

comment on column app_user.id is
'����';

comment on column app_user.weixinid is
'΢��openid';

comment on column app_user.loginname is
'��¼��';

comment on column app_user.password is
'����';

comment on column app_user.imgeurl is
'ͷ��ͼƬ';

comment on column app_user.nickname is
'�ǳ�';

comment on column app_user.truename is
'����';

comment on column app_user.phone is
'�绰';

comment on column app_user.sex is
'�Ա�';

comment on column app_user.states is
'״̬������ ���� �رգ�';

comment on column app_user.isonline is
'״̬��1���� 0 ���� ��';

comment on column app_user.createtime is
'���ʱ��';

/*==============================================================*/
/* Table: area                                                  */
/*==============================================================*/
create table area (
   id                   SERIAL               not null,
   describe             VARCHAR(32)          null,
   createtime           TIMESTAMP            null,
   creator_id           VARCHAR(36)          null,
   mac                  VARCHAR(36)          null,
   constraint PK_AREA primary key (id)
);

comment on table area is
'area  �������ң�';

comment on column area.id is
'����';

comment on column area.describe is
'����';

comment on column area.createtime is
'���ʱ��';

comment on column area.creator_id is
'������id';

comment on column area.mac is
'wifimac��ַ';

/*==============================================================*/
/* Table: device                                                */
/*==============================================================*/
create table device (
   mac                  VARCHAR(36)          not null,
   chipid               VARCHAR(36)          null,
   sn                   VARCHAR(36)          null,
   createtime           TIMESTAMP            null,
   servercode           INT4                 null,
   isonline             INT2                 null,
   online_time          TIMESTAMP            null,
  constraint PK_DEVICE_INFO primary key (mac)
);

comment on table device is
'device �豸';

comment on column device.mac is
'mac��ַ(����)';

comment on column device.chipid is
'оƬid';

comment on column device.sn is
'sn����';

comment on column device.createtime is
'���ʱ��';

comment on column device.servercode is
'���������';

comment on column device.isonline is
'�Ƿ�����(1���� 0������)';

comment on column device.online_time is
'�������ʱ��';

/*==============================================================*/
/* Table: device_attention                                      */
/*==============================================================*/
create table device_attention (
   id                   SERIAL               not null,
   mac                  VARCHAR(36)          null,
   userid               VARCHAR(38)          null,
   area_id              INT4                 null,
   createtime           TIMESTAMP            null,
   keyid                INT4                 null,
   key                  VARCHAR(36)          null,
   from_uid             VARCHAR(38)          null,
   constraint PK_DEVICE_ATTENTION primary key (id)
);

comment on table device_attention is
'device_attention �û����豸��ע��������Զࣩ';

comment on column device_attention.id is
'����';

comment on column device_attention.mac is
'mac��ַ';

comment on column device_attention.userid is
'�û�id';

comment on column device_attention.area_id is
'(����)��id';

comment on column device_attention.createtime is
'���ʱ��';

comment on column device_attention.keyid is
'keyid';

comment on column device_attention.key is
'key';

comment on column device_attention.from_uid is
'������id';

/*==============================================================*/
/* Table: device_info                                           */
/*==============================================================*/
create table device_info (
   mac                  VARCHAR(36)          not null,
   name                 VARCHAR(32)          null,
   guest_key            VARCHAR(36)          null,
   com_key              VARCHAR(36)          null,
   ad_key               VARCHAR(36)          null,
   createtime           TIMESTAMP            null,
   wifimac              VARCHAR(36)          null,
   aids                 VARCHAR(254)         null,
   constraint PK_DEVICE_INFO primary key (mac)
);

comment on table device_info is
'device_info �豸����';

comment on column device_info.mac is
'mac��ַ(����)';

comment on column device_info.name is
'����';

comment on column device_info.guest_key is
'��������';

comment on column device_info.com_key is
'һ������';

comment on column device_info.ad_key is
'����Ա����';

comment on column device_info.createtime is
'���ʱ��';

comment on column device_info.aids is
'�豸����AID(���, �Ÿ��� )';

/*==============================================================*/
/* Table: device_port                                           */
/*==============================================================*/
create table device_port (
   id                   SERIAL               not null,
   mac                  VARCHAR(36)          null,
   port                 INT4                 null,
   portname             VARCHAR(32)          null,
   aids                 VARCHAR(254)         null,
   aid_dev_type         INT4                 null,
   dev_modelid          INT4                 null,
   constraint PK_DEVICE_PORT primary key (id)
);

comment on table device_port is
'device_port( �˿��豸)';

comment on column device_port.id is
'����';

comment on column device_port.mac is
'�豸id';

comment on column device_port.port is
'�˿�';

comment on column device_port.portname is
'����';

comment on column device_port.aids is
'AID(���, �Ÿ��� )';

comment on column device_port.aid_dev_type is
'�豸����';

comment on column device_port.dev_modelid is
'�ͺ�id';

/*==============================================================*/
/* Table: device_port_attention                                 */
/*==============================================================*/
create table device_port_attention (
   id                   SERIAL               not null,
   mac                  VARCHAR(36)          null,
   device_port_id       INT8                 null,
   device_attention_id  INT8                 null,
   userid               VARCHAR(38)          null,
   portname             VARCHAR(32)          null,
   createtime           TIMESTAMP            null,
   region_id            INT4                 null,
   constraint PK_DEVICE_PORT_ATTENTION primary key (id)
);

comment on table device_port_attention is
'device_port_attention �û��Ͷ˿��豸��������Զࣩ';

comment on column device_port_attention.id is
'����';

comment on column device_port_attention.mac is
'�豸id';

comment on column device_port_attention.device_port_id is
'�˿�id';

comment on column device_port_attention.device_attention_id is
'�󶨹���id';

comment on column device_port_attention.userid is
'�û�id';

comment on column device_port_attention.portname is
'����';

comment on column device_port_attention.createtime is
'���ʱ��';

comment on column device_port_attention.region_id is
'����id';

/*==============================================================*/
/* Table: region                                                */
/*==============================================================*/
create table region (
   id                   SERIAL               not null,
   describe             VARCHAR(32)          null,
   area_id              INT4                 null,
   createtime           TIMESTAMP            null,
   creator_id           VARCHAR(36)          null,
   constraint PK_REGION primary key (id)
);

comment on table region is
'region ���򣨷��䣩';

comment on column region.id is
'����';

comment on column region.describe is
'����';

comment on column region.area_id is
'(����)��id';

comment on column region.createtime is
'���ʱ��';

comment on column region.creator_id is
'������id';

/*==============================================================*/
/* Table: scene                                                 */
/*==============================================================*/
create table scene (
   id                   VARCHAR(38)          not null,
   describe             VARCHAR(40)          null,
   mac                  VARCHAR(36)          null,
   store_mac            VARCHAR(500)         null,
   area_id              INT4                 null,
   data                 TEXT                 null,
   file_name            VARCHAR(254)         null,
   filedata             TEXT                 null,
   status               INT4                 null,
   creator_id           VARCHAR(38)          null,
   userid_set           VARCHAR(500)         null,
   createtime           TIMESTAMP            null,
   typeid               INT4                 null,
   constraint PK_SCENE primary key (id)
);

comment on table scene is
'�龰����̣�';

comment on column scene.id is
'����';

comment on column scene.describe is
'��������';

comment on column scene.mac is
'��������豸 mac��ַ';

comment on column scene.store_mac is
'������豸��ַ';

comment on column scene.area_id is
'��id';

comment on column scene.data is
'�������';

comment on column scene.file_name is
'�ļ�����';

comment on column scene.filedata is
'���ɵ��ļ�����';

comment on column scene.status is
'״̬';

comment on column scene.creator_id is
'������id';

comment on column scene.userid_set is
'(��Ȩ�޵��û�id ���Ÿ���)';

comment on column scene.createtime is
'���ʱ��';

comment on column scene.typeid is
'���ͣ���������������ʱ�����䶨ʱ��';
