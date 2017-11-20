.class public Lcom/google/glass/timeline/IntentSerializer;
.super Ljava/lang/Object;
.source "IntentSerializer.java"


# static fields
.field private static final EMPTY_PLACE_HOLDER:Ljava/lang/String; = "!%e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes([B)Landroid/content/Intent;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {v3}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 51
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    :cond_0
    invoke-static {v3}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 55
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_1
    invoke-static {v3}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-static {v3}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "className":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    return-object v4
.end method

.method private static readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "result":Ljava/lang/String;
    const-string v1, "!%e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static toBytes(Landroid/content/Intent;)[B
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    invoke-static {v1, v3}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private static writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "!%e"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "!%e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 72
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method
