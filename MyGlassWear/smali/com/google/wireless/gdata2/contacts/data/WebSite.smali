.class public Lcom/google/wireless/gdata2/contacts/data/WebSite;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "WebSite.java"


# static fields
.field public static final TYPE_BLOG:B = 0x2t

.field public static final TYPE_FTP:B = 0x7t

.field public static final TYPE_HOME:B = 0x4t

.field public static final TYPE_HOMEPAGE:B = 0x1t

.field public static final TYPE_OTHER:B = 0x6t

.field public static final TYPE_PROFILE:B = 0x3t

.field public static final TYPE_WORK:B = 0x5t


# instance fields
.field private href:Ljava/lang/String;

.field private linksTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "linksTo"    # Ljava/lang/String;
    .param p3, "type"    # B
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "isPrimary"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p3, p4, p5}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 30
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->linksTo:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getHRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLinksTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->linksTo:Ljava/lang/String;

    return-object v0
.end method

.method public setHRef(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLinksTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "linksTo"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->linksTo:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 57
    const-string v0, "WebSite"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 59
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, " href:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->linksTo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " linksTo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->linksTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_1
    return-void
.end method
