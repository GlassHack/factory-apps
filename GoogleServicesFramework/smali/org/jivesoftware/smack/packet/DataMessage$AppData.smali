.class public Lorg/jivesoftware/smack/packet/DataMessage$AppData;
.super Ljava/lang/Object;
.source "DataMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/DataMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppData"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->key:Ljava/lang/String;

    .line 305
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->value:Ljava/lang/String;

    .line 306
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->APP_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 318
    .local v0, "protobuf":Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 319
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 320
    return-object v0
.end method
