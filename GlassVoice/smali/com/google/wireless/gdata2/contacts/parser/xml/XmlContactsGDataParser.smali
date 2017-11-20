.class public Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlContactsGDataParser.java"


# static fields
.field private static final GD_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/g/2005#"

.field public static final IM_PROTOCOL_AIM:Ljava/lang/String; = "http://schemas.google.com/g/2005#AIM"

.field public static final IM_PROTOCOL_GOOGLE_TALK:Ljava/lang/String; = "http://schemas.google.com/g/2005#GOOGLE_TALK"

.field public static final IM_PROTOCOL_ICQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#ICQ"

.field public static final IM_PROTOCOL_JABBER:Ljava/lang/String; = "http://schemas.google.com/g/2005#JABBER"

.field public static final IM_PROTOCOL_MSN:Ljava/lang/String; = "http://schemas.google.com/g/2005#MSN"

.field public static final IM_PROTOCOL_NETMEETING:Ljava/lang/String; = "http://schemas.google.com/g/2005#netmeeting"

.field public static final IM_PROTOCOL_QQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#QQ"

.field public static final IM_PROTOCOL_SKYPE:Ljava/lang/String; = "http://schemas.google.com/g/2005#SKYPE"

.field private static final IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

.field public static final IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

.field public static final IM_PROTOCOL_YAHOO:Ljava/lang/String; = "http://schemas.google.com/g/2005#YAHOO"

.field public static final LINK_REL_HIGH_RES_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#high-res-photo"

.field public static final LINK_REL_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#photo"

.field public static final NAMESPACE_CONTACTS:Ljava/lang/String; = "gContact"

.field public static final NAMESPACE_CONTACTS_URI:Ljava/lang/String; = "http://schemas.google.com/contact/2008"

.field private static final REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_IM:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_JOT:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_SIP:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

.field public static final TYPESTRING_ASSISTANT:Ljava/lang/String; = "http://schemas.google.com/g/2005#assistant"

.field public static final TYPESTRING_CALENDARLINK_FREEBUSY:Ljava/lang/String; = "free-busy"

.field public static final TYPESTRING_CALENDARLINK_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_CALENDARLINK_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_CALLBACK:Ljava/lang/String; = "http://schemas.google.com/g/2005#callback"

.field public static final TYPESTRING_CAR:Ljava/lang/String; = "http://schemas.google.com/g/2005#car"

.field public static final TYPESTRING_COMPANY_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#company_main"

.field public static final TYPESTRING_EVENT_ANNIVERARY:Ljava/lang/String; = "anniversary"

.field public static final TYPESTRING_EVENT_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_EXTERNALID_ACCOUNT:Ljava/lang/String; = "account"

.field public static final TYPESTRING_EXTERNALID_CUSTOMER:Ljava/lang/String; = "customer"

.field public static final TYPESTRING_EXTERNALID_NETWORK:Ljava/lang/String; = "network"

.field public static final TYPESTRING_EXTERNALID_ORGANIZATION:Ljava/lang/String; = "organization"

.field public static final TYPESTRING_HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final TYPESTRING_HOME_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#home_fax"

.field public static final TYPESTRING_ISDN:Ljava/lang/String; = "http://schemas.google.com/g/2005#isdn"

.field public static final TYPESTRING_JOT_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_JOT_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final TYPESTRING_JOT_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_JOT_USER:Ljava/lang/String; = "user"

.field public static final TYPESTRING_JOT_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#main"

.field public static final TYPESTRING_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#mobile"

.field public static final TYPESTRING_OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final TYPESTRING_OTHER_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#other_fax"

.field public static final TYPESTRING_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#pager"

.field public static final TYPESTRING_PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final TYPESTRING_PRIORITY_LOW:Ljava/lang/String; = "low"

.field public static final TYPESTRING_PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPESTRING_RADIO:Ljava/lang/String; = "http://schemas.google.com/g/2005#radio"

.field public static final TYPESTRING_RELATION_ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final TYPESTRING_RELATION_BROTHER:Ljava/lang/String; = "brother"

.field public static final TYPESTRING_RELATION_CHILD:Ljava/lang/String; = "child"

.field public static final TYPESTRING_RELATION_DOMESTICPARTNER:Ljava/lang/String; = "domestic-partner"

.field public static final TYPESTRING_RELATION_FATHER:Ljava/lang/String; = "father"

.field public static final TYPESTRING_RELATION_FRIEND:Ljava/lang/String; = "friend"

.field public static final TYPESTRING_RELATION_MANAGER:Ljava/lang/String; = "manager"

.field public static final TYPESTRING_RELATION_MOTHER:Ljava/lang/String; = "mother"

.field public static final TYPESTRING_RELATION_PARENT:Ljava/lang/String; = "parent"

.field public static final TYPESTRING_RELATION_PARTNER:Ljava/lang/String; = "partner"

.field public static final TYPESTRING_RELATION_REFERREDBY:Ljava/lang/String; = "referred-by"

.field public static final TYPESTRING_RELATION_RELATIVE:Ljava/lang/String; = "relative"

.field public static final TYPESTRING_RELATION_SISTER:Ljava/lang/String; = "sister"

.field public static final TYPESTRING_RELATION_SPOUSE:Ljava/lang/String; = "spouse"

.field public static final TYPESTRING_SENSITIVITY_CONFIDENTIAL:Ljava/lang/String; = "confidential"

.field public static final TYPESTRING_SENSITIVITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPESTRING_SENSITIVITY_PERSONAL:Ljava/lang/String; = "personal"

.field public static final TYPESTRING_SENSITIVITY_PRIVATE:Ljava/lang/String; = "private"

.field public static final TYPESTRING_TELEX:Ljava/lang/String; = "http://schemas.google.com/g/2005#telex"

.field public static final TYPESTRING_TTY_TDD:Ljava/lang/String; = "http://schemas.google.com/g/2005#tty_tdd"

.field public static final TYPESTRING_WEBSITE_BLOG:Ljava/lang/String; = "blog"

.field public static final TYPESTRING_WEBSITE_FTP:Ljava/lang/String; = "ftp"

.field public static final TYPESTRING_WEBSITE_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_WEBSITE_HOMEPAGE:Ljava/lang/String; = "home-page"

.field public static final TYPESTRING_WEBSITE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_WEBSITE_PROFILE:Ljava/lang/String; = "profile"

.field public static final TYPESTRING_WEBSITE_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"

.field public static final TYPESTRING_WORK_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_fax"

.field public static final TYPESTRING_WORK_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_mobile"

.field public static final TYPESTRING_WORK_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_pager"

.field public static final TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_IM:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_JOT:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_SIP:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 156
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 157
    .local v0, "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    .line 161
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    .line 163
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 164
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "http://schemas.google.com/g/2005#mobile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "http://schemas.google.com/g/2005#pager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "http://schemas.google.com/g/2005#home_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "http://schemas.google.com/g/2005#work_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "http://schemas.google.com/g/2005#assistant"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "http://schemas.google.com/g/2005#callback"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "http://schemas.google.com/g/2005#car"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "http://schemas.google.com/g/2005#company_main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "http://schemas.google.com/g/2005#isdn"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "http://schemas.google.com/g/2005#main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "http://schemas.google.com/g/2005#other_fax"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "http://schemas.google.com/g/2005#radio"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "http://schemas.google.com/g/2005#telex"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "http://schemas.google.com/g/2005#tty_tdd"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "http://schemas.google.com/g/2005#work_mobile"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "http://schemas.google.com/g/2005#work_pager"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    .line 184
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    .line 186
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 187
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    .line 191
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    .line 193
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 194
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    .line 198
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    .line 200
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 201
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    .line 204
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    .line 206
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 207
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#AIM"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "http://schemas.google.com/g/2005#MSN"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "http://schemas.google.com/g/2005#YAHOO"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "http://schemas.google.com/g/2005#SKYPE"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "http://schemas.google.com/g/2005#QQ"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "http://schemas.google.com/g/2005#ICQ"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "http://schemas.google.com/g/2005#JABBER"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "http://schemas.google.com/g/2005#netmeeting"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    .line 218
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    .line 220
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 221
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "free-busy"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    .line 225
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 228
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "anniversary"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    .line 231
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

    .line 233
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 234
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "account"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "customer"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "network"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "organization"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    .line 239
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

    .line 241
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 242
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "keywords"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "user"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    .line 248
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_JOT:Ljava/util/Hashtable;

    .line 250
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 251
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "high"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "low"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    .line 255
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

    .line 257
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 258
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "assistant"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "brother"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "child"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "domestic-partner"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "father"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "friend"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "manager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "mother"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "parent"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "partner"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "referred-by"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "relative"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "sister"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "spouse"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    .line 273
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

    .line 275
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 276
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "confidential"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v1, "personal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "private"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    .line 285
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

    .line 287
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 288
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "blog"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "home-page"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "profile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "ftp"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    .line 296
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;

    .line 298
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 299
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SIP:Ljava/util/Hashtable;

    .line 303
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SIP:Ljava/util/Hashtable;

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 329
    return-void
.end method

.method private static handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/Event;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 588
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 596
    return-void

    .line 590
    :cond_1
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->STARTTIME:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "startDate":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->setStartDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/Name;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 601
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 603
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 627
    return-void

    .line 605
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_GIVENNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenNameYomi(Ljava/lang/String;)V

    .line 608
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenName(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_ADDITIONALNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalNameYomi(Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalName(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FAMILYNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 614
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyNameYomi(Ljava/lang/String;)V

    .line 616
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyName(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 618
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNamePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 620
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNameSuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FULLNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullNameYomi(Ljava/lang/String;)V

    .line 624
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/Organization;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 563
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 581
    return-void

    .line 565
    :cond_1
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_2
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 568
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_3
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_DEPARTMENT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 570
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgDepartment(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_4
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_JOBDESC:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 572
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgJobDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_5
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_SYMBOL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 574
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgSymbol(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_6
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUESTRING:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setWhere(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 634
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 654
    return-void

    .line 636
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_STREET:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setStreet(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POBOX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPobox(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_NEIGHBORHOOD:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 641
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setNeighborhood(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_CITY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 643
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCity(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_REGION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 645
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setRegion(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POSTCODE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 647
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPostcode(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_7
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_COUNTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 649
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCountry(Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_8
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_FORMATTEDADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setFormattedAddress(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 3
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "relToTypeMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 528
    const-string v0, "true"

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->PRIMARY:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->setIsPrimary(Z)V

    .line 529
    return-void
.end method

.method private parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 3
    .param p1, "extendedProperty"    # Lcom/google/wireless/gdata2/data/ExtendedProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 665
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 666
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 667
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setXmlBlob(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method private static parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 4
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/TypedElement;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "relToTypeMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 533
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "rel":Ljava/lang/String;
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 538
    :cond_1
    const-string v1, "http://schemas.google.com/g/2005#other"

    .line 541
    :cond_2
    if-eqz v1, :cond_3

    .line 542
    invoke-static {v1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 544
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private static relToType(Ljava/lang/String;Ljava/util/Hashtable;)B
    .locals 4
    .param p0, "rel"    # Ljava/lang/String;
    .param p1, "relToTypeMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 549
    if-eqz p0, :cond_1

    .line 550
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 551
    .local v0, "type":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 552
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown rel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_0
    check-cast v0, Ljava/lang/Byte;

    .end local v0    # "type":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 556
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 7
    .param p0, "originalMap"    # Ljava/util/Hashtable;

    .prologue
    .line 307
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 308
    .local v2, "newMap":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 309
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 311
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 312
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 29
    .param p1, "entry"    # Lcom/google/wireless/gdata2/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 350
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 351
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "Expected ContactEntry!"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_0
    move-object/from16 v4, p1

    .line 353
    check-cast v4, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 354
    .local v4, "contactEntry":Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 355
    .local v14, "name":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v15

    .line 357
    .local v15, "ns":Ljava/lang/String;
    const-string v26, "http://schemas.google.com/g/2005"

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 358
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 359
    new-instance v5, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-direct {v5}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;-><init>()V

    .line 360
    .local v5, "emailAddress":Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v5, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 361
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL_DISPLAYNAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setDisplayName(Ljava/lang/String;)V

    .line 363
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 365
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LINKSTO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setLinksTo(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v4, v5}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    .line 506
    .end local v5    # "emailAddress":Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 368
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDeleted(Z)V

    goto :goto_0

    .line 369
    :cond_3
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 370
    new-instance v10, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-direct {v10}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;-><init>()V

    .line 371
    .local v10, "imAddress":Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v10, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 372
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 374
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setLabel(Ljava/lang/String;)V

    .line 376
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 378
    .local v21, "protocolString":Ljava/lang/String;
    if-nez v21, :cond_4

    .line 379
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 380
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 391
    :goto_1
    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    goto :goto_0

    .line 382
    :cond_4
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    .line 383
    .local v20, "predefinedProtocol":Ljava/lang/Byte;
    if-nez v20, :cond_5

    .line 384
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 385
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 388
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 392
    .end local v10    # "imAddress":Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    .end local v20    # "predefinedProtocol":Ljava/lang/Byte;
    .end local v21    # "protocolString":Ljava/lang/String;
    :cond_6
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 393
    new-instance v19, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-direct/range {v19 .. v19}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;-><init>()V

    .line 394
    .local v19, "postalAddress":Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 395
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 396
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    goto/16 :goto_0

    .line 397
    .end local v19    # "postalAddress":Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    :cond_7
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 398
    new-instance v18, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-direct/range {v18 .. v18}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;-><init>()V

    .line 399
    .local v18, "phoneNumber":Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 400
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 401
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LINKSTO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setLinksTo(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    goto/16 :goto_0

    .line 403
    .end local v18    # "phoneNumber":Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    :cond_8
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 404
    new-instance v16, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-direct/range {v16 .. v16}, Lcom/google/wireless/gdata2/contacts/data/Organization;-><init>()V

    .line 405
    .local v16, "organization":Lcom/google/wireless/gdata2/contacts/data/Organization;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 406
    invoke-static/range {v16 .. v17}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 407
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    goto/16 :goto_0

    .line 408
    .end local v16    # "organization":Lcom/google/wireless/gdata2/contacts/data/Organization;
    :cond_9
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 409
    new-instance v7, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-direct {v7}, Lcom/google/wireless/gdata2/data/ExtendedProperty;-><init>()V

    .line 410
    .local v7, "extendedProperty":Lcom/google/wireless/gdata2/data/ExtendedProperty;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    .line 411
    invoke-virtual {v4, v7}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    goto/16 :goto_0

    .line 412
    .end local v7    # "extendedProperty":Lcom/google/wireless/gdata2/data/ExtendedProperty;
    :cond_a
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 413
    new-instance v13, Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-direct {v13}, Lcom/google/wireless/gdata2/contacts/data/Name;-><init>()V

    .line 414
    .local v13, "n":Lcom/google/wireless/gdata2/contacts/data/Name;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 415
    invoke-virtual {v4, v13}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V

    goto/16 :goto_0

    .line 417
    .end local v13    # "n":Lcom/google/wireless/gdata2/contacts/data/Name;
    :cond_b
    const-string v26, "http://schemas.google.com/contact/2008"

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 418
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 419
    new-instance v9, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-direct {v9}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;-><init>()V

    .line 420
    .local v9, "group":Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 422
    const-string v26, "true"

    const/16 v27, 0x0

    sget-object v28, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 424
    invoke-virtual {v4, v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    goto/16 :goto_0

    .line 425
    .end local v9    # "group":Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    :cond_c
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 426
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_d
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BILLINGINFO:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 429
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBillingInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :cond_e
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 431
    new-instance v3, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;-><init>()V

    .line 432
    .local v3, "cl":Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v3, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 433
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setHRef(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v4, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    goto/16 :goto_0

    .line 435
    .end local v3    # "cl":Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    :cond_f
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_DIRECTORYSERVER:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 436
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDirectoryServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_10
    const-string v26, "event"

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 438
    new-instance v6, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-direct {v6}, Lcom/google/wireless/gdata2/contacts/data/Event;-><init>()V

    .line 439
    .local v6, "event":Lcom/google/wireless/gdata2/contacts/data/Event;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v6, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 440
    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 441
    invoke-virtual {v4, v6}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto/16 :goto_0

    .line 442
    .end local v6    # "event":Lcom/google/wireless/gdata2/contacts/data/Event;
    :cond_11
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 443
    new-instance v8, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-direct {v8}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;-><init>()V

    .line 444
    .local v8, "externalId":Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v8, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 445
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v4, v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    goto/16 :goto_0

    .line 447
    .end local v8    # "externalId":Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    :cond_12
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 448
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_13
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 450
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addHobby(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_14
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_INITIALS:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setInitials(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_15
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 454
    new-instance v11, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-direct {v11}, Lcom/google/wireless/gdata2/contacts/data/Jot;-><init>()V

    .line 455
    .local v11, "jot":Lcom/google/wireless/gdata2/contacts/data/Jot;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 456
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setLabel(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v4, v11}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    goto/16 :goto_0

    .line 458
    .end local v11    # "jot":Lcom/google/wireless/gdata2/contacts/data/Jot;
    :cond_16
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 459
    new-instance v12, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-direct {v12}, Lcom/google/wireless/gdata2/contacts/data/Language;-><init>()V

    .line 460
    .local v12, "language":Lcom/google/wireless/gdata2/contacts/data/Language;
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setCode(Ljava/lang/String;)V

    .line 461
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setLabel(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v4, v12}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V

    goto/16 :goto_0

    .line 463
    .end local v12    # "language":Lcom/google/wireless/gdata2/contacts/data/Language;
    :cond_17
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MAIDENNAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 464
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMaidenName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :cond_18
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MILEAGE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 466
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMileage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_19
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_NICKNAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 468
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setNickname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :cond_1a
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_OCCUPATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 470
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setOccupation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :cond_1b
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_PRIORITY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 472
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    invoke-static/range {v26 .. v27}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setPriority(B)V

    goto/16 :goto_0

    .line 475
    :cond_1c
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 476
    new-instance v22, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-direct/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/Relation;-><init>()V

    .line 477
    .local v22, "relation":Lcom/google/wireless/gdata2/contacts/data/Relation;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 478
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->setText(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    goto/16 :goto_0

    .line 480
    .end local v22    # "relation":Lcom/google/wireless/gdata2/contacts/data/Relation;
    :cond_1d
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SENSITIVITY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 481
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    invoke-static/range {v26 .. v27}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSensitivity(B)V

    goto/16 :goto_0

    .line 484
    :cond_1e
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SHORTNAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 485
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setShortName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    :cond_1f
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SUBJECT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 487
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_20
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 489
    new-instance v24, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-direct/range {v24 .. v24}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;-><init>()V

    .line 490
    .local v24, "udf":Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->KEY:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setKey(Ljava/lang/String;)V

    .line 491
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setValue(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    goto/16 :goto_0

    .line 493
    .end local v24    # "udf":Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    :cond_21
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 494
    new-instance v25, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-direct/range {v25 .. v25}, Lcom/google/wireless/gdata2/contacts/data/WebSite;-><init>()V

    .line 495
    .local v25, "ws":Lcom/google/wireless/gdata2/contacts/data/WebSite;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 496
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setHRef(Ljava/lang/String;)V

    .line 497
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LINKSTO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setLinksTo(Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    goto/16 :goto_0

    .line 499
    .end local v25    # "ws":Lcom/google/wireless/gdata2/contacts/data/WebSite;
    :cond_22
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SIP:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 500
    new-instance v23, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-direct/range {v23 .. v23}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;-><init>()V

    .line 501
    .local v23, "sipaddr":Lcom/google/wireless/gdata2/contacts/data/SipAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SIP:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 502
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->setAddress(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addSipAddress(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V

    goto/16 :goto_0
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 5
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "entry"    # Lcom/google/wireless/gdata2/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    const-string v3, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p4

    .line 511
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 512
    .local v0, "contactEntry":Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 513
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "etag":Ljava/lang/String;
    invoke-virtual {v0, p3, p2, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v0    # "contactEntry":Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .end local v1    # "etag":Ljava/lang/String;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const-string v3, "http://schemas.google.com/contacts/2008/rel#high-res-photo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p4

    .line 518
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 519
    .restart local v0    # "contactEntry":Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 520
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    .restart local v1    # "etag":Ljava/lang/String;
    invoke-virtual {v0, p3, p2, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setLinkPhotoHighRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v0    # "contactEntry":Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .end local v1    # "etag":Ljava/lang/String;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    return-void
.end method
