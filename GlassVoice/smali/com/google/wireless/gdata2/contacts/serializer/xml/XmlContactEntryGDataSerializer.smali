.class public Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlContactEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)V
    .locals 0
    .param p1, "factory"    # Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;
    .param p2, "entry"    # Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 46
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "calendarLink"    # Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getHRef()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "href":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 397
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    :cond_0
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "email"    # Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 181
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Event;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "event"    # Lcom/google/wireless/gdata2/contacts/data/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Event;->getStartDate()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "startDate":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EVENT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 411
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->STARTTIME:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    :cond_0
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EVENT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "externalId"    # Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "value":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 428
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    :cond_0
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "groupMembershipInfo"    # Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 326
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v1

    .line 329
    .local v1, "isDeleted":Z
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "the group must not be empty"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_0
    const-string v2, "http://schemas.google.com/contact/2008"

    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    const-string v2, "http://schemas.google.com/contact/2008"

    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    return-void

    .line 335
    :cond_1
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "im"    # Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 191
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 209
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "protocolString":Ljava/lang/String;
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    .end local v0    # "protocolString":Ljava/lang/String;
    :goto_1
    :sswitch_0
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 200
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object v0

    .line 201
    .restart local v0    # "protocolString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 202
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the protocol is custom, but the custom string is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Jot;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "jot"    # Lcom/google/wireless/gdata2/contacts/data/Jot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getType()B

    move-result v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_JOT:Ljava/util/Hashtable;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V

    .line 459
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    :cond_0
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Language;)V
    .locals 4
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "language"    # Lcom/google/wireless/gdata2/contacts/data/Language;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->validate()V

    .line 467
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    :goto_0
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    return-void

    .line 472
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Organization;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "organization"    # Lcom/google/wireless/gdata2/contacts/data/Organization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 236
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_NAME:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_TITLE:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgDepartment()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_DEPARTMENT:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgJobDescription()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_JOBDESC:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgSymbol()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_SYMBOL:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getWhere()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "where":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUESTRING:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    :cond_0
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "phone"    # Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 223
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getLinksTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    const/4 v0, 0x0

    const-string/jumbo v1, "uri"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getLinksTo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Relation;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "relation"    # Lcom/google/wireless/gdata2/contacts/data/Relation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getText()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "value":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 483
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    :cond_0
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "sipAddress"    # Lcom/google/wireless/gdata2/contacts/data/SipAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "address":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SIP:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SIP:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 577
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    :cond_0
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SIP:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "addr"    # Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 267
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 269
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getStreet()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_STREET:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPobox()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POBOX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_NEIGHBORHOOD:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_CITY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_REGION:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPostcode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POSTCODE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_FORMATTEDADDRESS:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "udf"    # Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->validate()V

    .line 491
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    :cond_1
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/WebSite;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "webSite"    # Lcom/google/wireless/gdata2/contacts/data/WebSite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getHRef()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "href":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 508
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    :cond_0
    const-string v1, "http://schemas.google.com/contact/2008"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    :cond_1
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "extendedProperty"    # Lcom/google/wireless/gdata2/data/ExtendedProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 341
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getXmlBlob()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "xmlBlob":Ljava/lang/String;
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {p0, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    :cond_0
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 350
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    :cond_1
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    invoke-static {p0, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 355
    :cond_2
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    return-void
.end method

.method private static serializeBirthday(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "birthday"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 0
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "blob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    return-void
.end method

.method private static serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Ljava/util/Hashtable;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "element"    # Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
    .param p2, "typeToRelMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V

    .line 319
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->PRIMARY:Ljava/lang/String;

    const-string v2, "true"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    :cond_0
    return-void
.end method

.method private static serializeElement(Lorg/xmlpull/v1/XmlSerializer;BLjava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "value"    # B
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "typeToRelMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    invoke-static {p0, p1, p3}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V

    .line 536
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    const-string v0, "http://schemas.google.com/contact/2008"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeGDSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeGenderElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeHobby(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "hobby"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const-string v0, "http://schemas.google.com/contact/2008"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeName(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Name;)V
    .locals 4
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Lcom/google/wireless/gdata2/contacts/data/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 541
    if-nez p1, :cond_0

    .line 556
    :goto_0
    return-void

    .line 542
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenNameYomi()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_GIVENNAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalNameYomi()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_ADDITIONALNAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyNameYomi()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FAMILYNAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNamePrefix()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_SUFFIX:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FULLNAME:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeNameSubelement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "yomi"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    :cond_1
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "type"    # B
    .param p2, "typeToRelMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    return-void
.end method

.method private static serializeTypedElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/Hashtable;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "element"    # Lcom/google/wireless/gdata2/contacts/data/TypedElement;
    .param p2, "typeToRelMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getType()B

    move-result v2

    .line 296
    .local v2, "type":B
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 299
    .local v0, "hasType":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->validate()V

    .line 301
    if-eqz v1, :cond_0

    .line 302
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {p0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    .line 305
    invoke-static {p0, v2, p2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeRelation(Lorg/xmlpull/v1/XmlSerializer;BLjava/util/Hashtable;)V

    .line 307
    :cond_1
    return-void

    .line 296
    .end local v0    # "hasType":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldSerialize(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/lang/String;)Z
    .locals 3
    .param p0, "element"    # Lcom/google/wireless/gdata2/contacts/data/TypedElement;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getType()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 50
    const-string v0, "gContact"

    const-string v1, "http://schemas.google.com/contact/2008"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected getContactEntry()Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    return-object v0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 27
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getContactEntry()Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move-result-object v22

    .line 64
    .local v22, "entry":Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->validate()V

    .line 66
    const-string v23, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoETag()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 70
    .local v7, "eachEmail":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 71
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v13

    .line 75
    .local v13, "eachIm":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 76
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v17

    .line 80
    .local v17, "eachPhone":Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 81
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 85
    .local v5, "eachAddress":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 86
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v16

    .line 90
    .local v16, "eachOrganization":Ljava/util/Enumeration;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 91
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/Organization;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .line 95
    .local v9, "eachExtendedProperty":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 96
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v11

    .line 100
    .local v11, "eachGroup":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 101
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    goto :goto_6

    .line 104
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 105
    .local v6, "eachCalendar":Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 106
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    goto :goto_7

    .line 109
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 110
    .local v8, "eachEvent":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 111
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/Event;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto :goto_8

    .line 114
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v21

    .line 115
    .local v21, "eachWebsite":Ljava/util/Enumeration;
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 116
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    goto :goto_9

    .line 119
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 120
    .local v10, "eachExternalId":Ljava/util/Enumeration;
    :goto_a
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 121
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    goto :goto_a

    .line 124
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v12

    .line 125
    .local v12, "eachHobby":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 126
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeHobby(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_b

    .line 129
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v14

    .line 130
    .local v14, "eachJot":Ljava/util/Enumeration;
    :goto_c
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 131
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/Jot;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    goto :goto_c

    .line 134
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v15

    .line 135
    .local v15, "eachLanguage":Ljava/util/Enumeration;
    :goto_d
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 136
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/Language;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Language;)V

    goto :goto_d

    .line 139
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v18

    .line 140
    .local v18, "eachRelation":Ljava/util/Enumeration;
    :goto_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 141
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/Relation;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    goto :goto_e

    .line 144
    :cond_e
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v20

    .line 145
    .local v20, "eachUDF":Ljava/util/Enumeration;
    :goto_f
    invoke-interface/range {v20 .. v20}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 146
    invoke-interface/range {v20 .. v20}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    goto :goto_f

    .line 149
    :cond_f
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSipAddresses()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v19

    .line 150
    .local v19, "eachSipAddress":Ljava/util/Enumeration;
    :goto_10
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 151
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V

    goto :goto_10

    .line 154
    :cond_10
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBirthday()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeBirthday(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getDirectoryServer()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_DIRECTORYSERVER:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGender()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeGenderElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getInitials()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_INITIALS:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMaidenName()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MAIDENNAME:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMileage()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MILEAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getNickname()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_NICKNAME:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOccupation()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_OCCUPATION:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getShortName()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SHORTNAME:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSubject()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SUBJECT:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBillingInformation()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BILLINGINFO:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPriority()B

    move-result v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_PRIORITY:Ljava/lang/String;

    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;BLjava/lang/String;Ljava/util/Hashtable;)V

    .line 170
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSensitivity()B

    move-result v23

    sget-object v24, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SENSITIVITY:Ljava/lang/String;

    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeElement(Lorg/xmlpull/v1/XmlSerializer;BLjava/lang/String;Ljava/util/Hashtable;)V

    .line 173
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeName(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/contacts/data/Name;)V

    .line 174
    return-void
.end method
