.class public Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlContactsGDataParser.java"


# static fields
.field private static final GD_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/g/2005#"

.field public static final IM_PROTOCOL_AIM:Ljava/lang/String; = "http://schemas.google.com/g/2005#AIM"

.field public static final IM_PROTOCOL_GOOGLE_TALK:Ljava/lang/String; = "http://schemas.google.com/g/2005#GOOGLE_TALK"

.field public static final IM_PROTOCOL_ICQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#ICQ"

.field public static final IM_PROTOCOL_JABBER:Ljava/lang/String; = "http://schemas.google.com/g/2005#JABBER"

.field public static final IM_PROTOCOL_MSN:Ljava/lang/String; = "http://schemas.google.com/g/2005#MSN"

.field public static final IM_PROTOCOL_QQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#QQ"

.field public static final IM_PROTOCOL_SKYPE:Ljava/lang/String; = "http://schemas.google.com/g/2005#SKYPE"

.field private static final IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

.field public static final IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

.field public static final IM_PROTOCOL_YAHOO:Ljava/lang/String; = "http://schemas.google.com/g/2005#YAHOO"

.field public static final LINK_REL_EDIT_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#edit-photo"

.field public static final LINK_REL_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#photo"

.field public static final NAMESPACE_CONTACTS:Ljava/lang/String; = "gContact"

.field public static final NAMESPACE_CONTACTS_URI:Ljava/lang/String; = "http://schemas.google.com/contact/2008"

.field private static final REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_IM:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

.field public static final TYPESTRING_HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final TYPESTRING_HOME_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#home_fax"

.field public static final TYPESTRING_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#mobile"

.field public static final TYPESTRING_OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final TYPESTRING_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#pager"

.field public static final TYPESTRING_WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"

.field public static final TYPESTRING_WORK_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_fax"

.field public static final TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_IM:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 82
    .local v0, "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "http://schemas.google.com/g/2005#primary"

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    .line 88
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    .line 90
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 91
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "http://schemas.google.com/g/2005#mobile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "http://schemas.google.com/g/2005#pager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "http://schemas.google.com/g/2005#home_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "http://schemas.google.com/g/2005#work_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    .line 99
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 102
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    .line 106
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 109
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    .line 113
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 116
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    .line 119
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    .line 121
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "map":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 122
    .restart local v0    # "map":Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#AIM"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "http://schemas.google.com/g/2005#MSN"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "http://schemas.google.com/g/2005#YAHOO"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "http://schemas.google.com/g/2005#SKYPE"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "http://schemas.google.com/g/2005#QQ"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "http://schemas.google.com/g/2005#ICQ"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "http://schemas.google.com/g/2005#JABBER"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    .line 131
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 157
    return-void
.end method

.method private static handleOrganizationSubElement(Lcom/google/wireless/gdata/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "element"    # Lcom/google/wireless/gdata/contacts/data/Organization;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 283
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 291
    return-void

    .line 285
    :cond_1
    const-string v2, "orgName"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-static {p1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/Organization;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    const-string v2, "orgTitle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-static {p1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 6
    .param p0, "element"    # Lcom/google/wireless/gdata/contacts/data/ContactsElement;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "relToTypeMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 260
    const-string v3, "rel"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "rel":Ljava/lang/String;
    const-string v3, "label"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 265
    :cond_1
    const-string v1, "http://schemas.google.com/g/2005#other"

    .line 268
    :cond_2
    if-eqz v1, :cond_4

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 270
    .local v2, "type":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 271
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown rel, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    :cond_3
    check-cast v2, Ljava/lang/Byte;

    .end local v2    # "type":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->setType(B)V

    .line 275
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->setLabel(Ljava/lang/String;)V

    .line 276
    const-string v3, "true"

    const-string v4, "primary"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->setIsPrimary(Z)V

    .line 277
    return-void
.end method

.method private parseExtendedProperty(Lcom/google/wireless/gdata/data/ExtendedProperty;)V
    .locals 3
    .param p1, "extendedProperty"    # Lcom/google/wireless/gdata/data/ExtendedProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 301
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "name"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 303
    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->setXmlBlob(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private static swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 7
    .param p0, "originalMap"    # Ljava/util/Hashtable;

    .prologue
    .line 135
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 136
    .local v2, "newMap":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 137
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 140
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
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

    .line 144
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/ContactsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/ContactsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 17
    .param p1, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 178
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-nez v14, :cond_0

    .line 179
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Expected ContactEntry!"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object/from16 v1, p1

    .line 181
    check-cast v1, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    .line 182
    .local v1, "contactEntry":Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "name":Ljava/lang/String;
    const-string v14, "email"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 184
    new-instance v2, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    invoke-direct {v2}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;-><init>()V

    .line 185
    .local v2, "emailAddress":Lcom/google/wireless/gdata/contacts/data/EmailAddress;
    sget-object v14, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    invoke-static {v2, v8, v14}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 187
    invoke-virtual {v2}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->getType()B

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    .line 188
    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->setType(B)V

    .line 189
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->setIsPrimary(Z)V

    .line 190
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->setLabel(Ljava/lang/String;)V

    .line 192
    :cond_1
    const/4 v14, 0x0

    const-string v15, "address"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V

    .line 244
    .end local v2    # "emailAddress":Lcom/google/wireless/gdata/contacts/data/EmailAddress;
    :cond_2
    :goto_0
    return-void

    .line 194
    :cond_3
    const-string v14, "deleted"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 195
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setDeleted(Z)V

    goto :goto_0

    .line 196
    :cond_4
    const-string v14, "im"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 197
    new-instance v5, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    invoke-direct {v5}, Lcom/google/wireless/gdata/contacts/data/ImAddress;-><init>()V

    .line 198
    .local v5, "imAddress":Lcom/google/wireless/gdata/contacts/data/ImAddress;
    sget-object v14, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    invoke-static {v5, v8, v14}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 199
    const/4 v14, 0x0

    const-string v15, "address"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 200
    const/4 v14, 0x0

    const-string v15, "label"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setLabel(Ljava/lang/String;)V

    .line 201
    const/4 v14, 0x0

    const-string v15, "protocol"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 202
    .local v12, "protocolString":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 203
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 204
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 215
    :goto_1
    invoke-virtual {v1, v5}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata/contacts/data/ImAddress;)V

    goto :goto_0

    .line 206
    :cond_5
    sget-object v14, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    invoke-virtual {v14, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    .line 207
    .local v11, "predefinedProtocol":Ljava/lang/Byte;
    if-nez v11, :cond_6

    .line 208
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 209
    invoke-virtual {v5, v12}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 212
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v5    # "imAddress":Lcom/google/wireless/gdata/contacts/data/ImAddress;
    .end local v11    # "predefinedProtocol":Ljava/lang/Byte;
    .end local v12    # "protocolString":Ljava/lang/String;
    :cond_7
    const-string v14, "postalAddress"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 217
    new-instance v10, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    invoke-direct {v10}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;-><init>()V

    .line 218
    .local v10, "postalAddress":Lcom/google/wireless/gdata/contacts/data/PostalAddress;
    sget-object v14, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    invoke-static {v10, v8, v14}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 219
    invoke-static {v8}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->setValue(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v10}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V

    goto/16 :goto_0

    .line 221
    .end local v10    # "postalAddress":Lcom/google/wireless/gdata/contacts/data/PostalAddress;
    :cond_8
    const-string v14, "phoneNumber"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 222
    new-instance v9, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    invoke-direct {v9}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;-><init>()V

    .line 223
    .local v9, "phoneNumber":Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
    sget-object v14, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    invoke-static {v9, v8, v14}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 224
    invoke-static {v8}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v9}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V

    goto/16 :goto_0

    .line 226
    .end local v9    # "phoneNumber":Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
    :cond_9
    const-string v14, "organization"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 227
    new-instance v7, Lcom/google/wireless/gdata/contacts/data/Organization;

    invoke-direct {v7}, Lcom/google/wireless/gdata/contacts/data/Organization;-><init>()V

    .line 228
    .local v7, "organization":Lcom/google/wireless/gdata/contacts/data/Organization;
    sget-object v14, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    invoke-static {v7, v8, v14}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 229
    invoke-static {v7, v8}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->handleOrganizationSubElement(Lcom/google/wireless/gdata/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 230
    invoke-virtual {v1, v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata/contacts/data/Organization;)V

    goto/16 :goto_0

    .line 231
    .end local v7    # "organization":Lcom/google/wireless/gdata/contacts/data/Organization;
    :cond_a
    const-string v14, "extendedProperty"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 232
    new-instance v3, Lcom/google/wireless/gdata/data/ExtendedProperty;

    invoke-direct {v3}, Lcom/google/wireless/gdata/data/ExtendedProperty;-><init>()V

    .line 233
    .local v3, "extendedProperty":Lcom/google/wireless/gdata/data/ExtendedProperty;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->parseExtendedProperty(Lcom/google/wireless/gdata/data/ExtendedProperty;)V

    .line 234
    invoke-virtual {v1, v3}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata/data/ExtendedProperty;)V

    goto/16 :goto_0

    .line 235
    .end local v3    # "extendedProperty":Lcom/google/wireless/gdata/data/ExtendedProperty;
    :cond_b
    const-string v14, "groupMembershipInfo"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 236
    new-instance v4, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    invoke-direct {v4}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;-><init>()V

    .line 237
    .local v4, "group":Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;
    const/4 v14, 0x0

    const-string v15, "href"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 238
    const-string v14, "true"

    const/4 v15, 0x0

    const-string v16, "deleted"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 239
    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V

    goto/16 :goto_0

    .line 240
    .end local v4    # "group":Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;
    :cond_c
    const-string/jumbo v14, "yomiName"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 241
    invoke-static {v8}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, "yomiName":Ljava/lang/String;
    invoke-virtual {v1, v13}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setYomiName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 2
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const-string v1, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p4

    .line 250
    check-cast v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    .line 251
    .local v0, "contactEntry":Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    invoke-virtual {v0, p3, p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setLinkPhoto(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v0    # "contactEntry":Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v1, "http://schemas.google.com/contacts/2008/rel#edit-photo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p4

    .line 253
    check-cast v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    .line 254
    .restart local v0    # "contactEntry":Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    invoke-virtual {v0, p3, p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setLinkEditPhoto(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
