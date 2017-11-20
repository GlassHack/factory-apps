.class public Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlGroupEntryGDataParser.java"


# direct methods
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
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/GroupsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/GroupsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/google/wireless/gdata/data/Entry;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 48
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    instance-of v4, p1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-nez v4, :cond_0

    .line 49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expected GroupEntry!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    .line 52
    .local v0, "groupEntry":Lcom/google/wireless/gdata/contacts/data/GroupEntry;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "name":Ljava/lang/String;
    const-string v4, "systemGroup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    const/4 v4, 0x0

    const-string v5, "id"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "systemGroup":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 57
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->setSystemGroup(Ljava/lang/String;)V

    .line 59
    .end local v3    # "systemGroup":Ljava/lang/String;
    :cond_2
    return-void
.end method
