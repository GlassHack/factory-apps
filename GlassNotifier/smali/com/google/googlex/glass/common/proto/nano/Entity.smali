.class public final Lcom/google/googlex/glass/common/proto/nano/Entity;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/Entity$Command;,
        Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;,
        Lcom/google/googlex/glass/common/proto/nano/Entity$ContactGroup;,
        Lcom/google/googlex/glass/common/proto/nano/Entity$Type;,
        Lcom/google/googlex/glass/common/proto/nano/Entity$MessagingOption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Entity;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity;


# instance fields
.field public acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

.field public acceptType:[Ljava/lang/String;

.field private bitField0_:I

.field public contactGroup:[I

.field private creationTime_:J

.field private displayName_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field public focusContactId:[J

.field private fullName_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field public imageUrl:[Ljava/lang/String;

.field private isCommunicationTarget_:Z

.field private messagingOption_:I

.field public messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

.field private nickname_:Ljava/lang/String;

.field private obfuscatedGaiaId_:Ljava/lang/String;

.field private phoneNumber_:Ljava/lang/String;

.field public priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

.field public secondaryEmail:[Ljava/lang/String;

.field public secondaryPhoneNumber:[Ljava/lang/String;

.field public sharingFeature:[I

.field private shouldSync_:Z

.field private source_:Ljava/lang/String;

.field private speakableName_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->clear()Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1015
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 2

    .prologue
    .line 675
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v0, :cond_1

    .line 676
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v0, :cond_0

    .line 679
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Entity;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 681
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    return-object v0

    .line 681
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1921
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1915
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1018
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 1019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    .line 1020
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 1022
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 1023
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    .line 1024
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    .line 1026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    .line 1027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    .line 1028
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    .line 1029
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    .line 1030
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    .line 1031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    .line 1032
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 1033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    .line 1034
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    .line 1035
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    .line 1036
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    .line 1037
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    .line 1038
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    .line 1039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    .line 1040
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    .line 1041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    .line 1042
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    .line 1043
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1044
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->cachedSize:I

    .line 1045
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 2

    .prologue
    .line 998
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    .line 999
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 1000
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    .line 789
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 790
    return-object p0
.end method

.method public clearEmail()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    .line 921
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 922
    return-object p0
.end method

.method public clearFullName()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    .line 833
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 834
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    .line 720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 721
    return-object p0
.end method

.method public clearIsCommunicationTarget()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    .line 949
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 950
    return-object p0
.end method

.method public clearMessagingOption()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 772
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    .line 773
    return-object p0
.end method

.method public clearNickname()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    .line 811
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 812
    return-object p0
.end method

.method public clearObfuscatedGaiaId()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 742
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 743
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    .line 896
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 897
    return-object p0
.end method

.method public clearShouldSync()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    .line 858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 859
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 697
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    .line 698
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 699
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    .line 974
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 975
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 882
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    .line 883
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 10

    .prologue
    .line 1324
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v5

    .line 1325
    .local v5, "size":I
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 1326
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    .line 1327
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1329
    :cond_0
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 1330
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    .line 1331
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1333
    :cond_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    .line 1334
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    .line 1335
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1337
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    .line 1338
    const/4 v6, 0x5

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    .line 1339
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1341
    :cond_3
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_4

    .line 1342
    const/4 v6, 0x6

    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    .line 1343
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1345
    :cond_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    .line 1346
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    .line 1347
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1349
    :cond_5
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_6

    .line 1350
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    .line 1351
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1353
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_9

    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 1356
    .local v1, "dataSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_8

    .line 1357
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v6, v4

    .line 1358
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1359
    add-int/lit8 v0, v0, 0x1

    .line 1361
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1356
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1364
    .end local v2    # "element":Ljava/lang/String;
    :cond_8
    add-int/2addr v5, v1

    .line 1365
    mul-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    .line 1367
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_9
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_a

    .line 1368
    const/16 v6, 0xa

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    .line 1369
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1371
    :cond_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_d

    .line 1372
    const/4 v0, 0x0

    .line 1373
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 1374
    .restart local v1    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_c

    .line 1375
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v6, v4

    .line 1376
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1377
    add-int/lit8 v0, v0, 0x1

    .line 1379
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1374
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1382
    .end local v2    # "element":Ljava/lang/String;
    :cond_c
    add-int/2addr v5, v1

    .line 1383
    mul-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    .line 1385
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_10

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 1388
    .restart local v1    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_f

    .line 1389
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v6, v4

    .line 1390
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 1391
    add-int/lit8 v0, v0, 0x1

    .line 1393
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1388
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1396
    .end local v2    # "element":Ljava/lang/String;
    :cond_f
    add-int/2addr v5, v1

    .line 1397
    mul-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    .line 1399
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-eqz v6, :cond_11

    .line 1400
    const/16 v6, 0xe

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    .line 1401
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1403
    :cond_11
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_14

    .line 1404
    const/4 v0, 0x0

    .line 1405
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 1406
    .restart local v1    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_13

    .line 1407
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v6, v4

    .line 1408
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 1409
    add-int/lit8 v0, v0, 0x1

    .line 1411
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1406
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1414
    .end local v2    # "element":Ljava/lang/String;
    :cond_13
    add-int/2addr v5, v1

    .line 1415
    mul-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    .line 1417
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_14
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    array-length v6, v6

    if-lez v6, :cond_16

    .line 1418
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    array-length v6, v6

    if-ge v4, v6, :cond_16

    .line 1419
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    aget-object v2, v6, v4

    .line 1420
    .local v2, "element":Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    if-eqz v2, :cond_15

    .line 1421
    const/16 v6, 0x10

    .line 1422
    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1418
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1426
    .end local v2    # "element":Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .end local v4    # "i":I
    :cond_16
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_17

    .line 1427
    const/16 v6, 0x11

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    .line 1428
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1430
    :cond_17
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    array-length v6, v6

    if-lez v6, :cond_19

    .line 1431
    const/4 v1, 0x0

    .line 1432
    .restart local v1    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    array-length v6, v6

    if-ge v4, v6, :cond_18

    .line 1433
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    aget v2, v6, v4

    .line 1435
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1432
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1437
    .end local v2    # "element":I
    :cond_18
    add-int/2addr v5, v1

    .line 1438
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1440
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_19
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_1a

    .line 1441
    const/16 v6, 0x15

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    .line 1442
    invoke-static {v6, v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1444
    :cond_1a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    array-length v6, v6

    if-lez v6, :cond_1c

    .line 1445
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    array-length v6, v6

    if-ge v4, v6, :cond_1c

    .line 1446
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    aget-object v2, v6, v4

    .line 1447
    .local v2, "element":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    if-eqz v2, :cond_1b

    .line 1448
    const/16 v6, 0x16

    .line 1449
    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1445
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1453
    .end local v2    # "element":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .end local v4    # "i":I
    :cond_1c
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1d

    .line 1454
    const/16 v6, 0x17

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    .line 1455
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1457
    :cond_1d
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1e

    .line 1458
    const/16 v6, 0x19

    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    .line 1459
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1461
    :cond_1e
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_1f

    .line 1462
    const/16 v6, 0x1a

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    .line 1463
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1465
    :cond_1f
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    array-length v6, v6

    if-lez v6, :cond_21

    .line 1466
    const/4 v1, 0x0

    .line 1467
    .restart local v1    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    array-length v6, v6

    if-ge v4, v6, :cond_20

    .line 1468
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    aget v2, v6, v4

    .line 1470
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1467
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1472
    .end local v2    # "element":I
    :cond_20
    add-int/2addr v5, v1

    .line 1473
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1475
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_21
    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_22

    .line 1476
    const/16 v6, 0x1c

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 1477
    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1479
    :cond_22
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    array-length v6, v6

    if-lez v6, :cond_24

    .line 1480
    const/4 v1, 0x0

    .line 1481
    .restart local v1    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    array-length v6, v6

    if-ge v4, v6, :cond_23

    .line 1482
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    aget-wide v2, v6, v4

    .line 1484
    .local v2, "element":J
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v6

    add-int/2addr v1, v6

    .line 1481
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1486
    .end local v2    # "element":J
    :cond_23
    add-int/2addr v5, v1

    .line 1487
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1489
    .end local v1    # "dataSize":I
    .end local v4    # "i":I
    :cond_24
    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1050
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 1161
    :cond_0
    :goto_0
    return v1

    .line 1053
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1056
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1057
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Entity;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    .line 1058
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1061
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    .line 1062
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 1066
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1073
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    if-ne v3, v4, :cond_0

    .line 1077
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1081
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    .line 1082
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1085
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    .line 1086
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1089
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    .line 1090
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1093
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1097
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    if-ne v3, v4, :cond_0

    .line 1101
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    if-ne v3, v4, :cond_0

    .line 1105
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    .line 1106
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1109
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    .line 1114
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1117
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1121
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    if-ne v3, v4, :cond_0

    .line 1129
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-nez v3, :cond_5

    .line 1130
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-nez v3, :cond_0

    .line 1138
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1142
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    .line 1143
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1146
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1150
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1154
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1158
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1159
    :cond_3
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0

    .line 1134
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 1161
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 992
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    return v0
.end method

.method public getMessagingOption()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedGaiaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    return v0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFullName()Z
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessagingOption()Z
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObfuscatedGaiaId()Z
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShouldSync()Z
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v4, 0x0

    .line 1166
    const/16 v0, 0x11

    .line 1167
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1168
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1169
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1170
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1171
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 1172
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1173
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    add-int v0, v1, v5

    .line 1174
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    .line 1175
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([I)I

    move-result v5

    add-int v0, v1, v5

    .line 1176
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1177
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1178
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1179
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    .line 1180
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1181
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v5, v1

    .line 1182
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    add-int v0, v1, v5

    .line 1183
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1184
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 1185
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1187
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    .line 1188
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1189
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    .line 1190
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1191
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    if-eqz v5, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 1192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-nez v1, :cond_3

    move v1, v4

    .line 1193
    :goto_2
    add-int v0, v2, v1

    .line 1194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    .line 1195
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 1196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    .line 1198
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 1199
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    xor-long/2addr v2, v6

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 1200
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    .line 1201
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([J)I

    move-result v2

    add-int v0, v1, v2

    .line 1202
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1203
    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1204
    :cond_0
    :goto_3
    add-int v0, v1, v4

    .line 1205
    return v0

    :cond_1
    move v1, v3

    .line 1181
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 1191
    goto :goto_1

    .line 1193
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->hashCode()I

    move-result v1

    goto :goto_2

    .line 1204
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v4

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 21
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v15

    .line 1498
    .local v15, "tag":I
    sparse-switch v15, :sswitch_data_0

    .line 1502
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v15}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1503
    :sswitch_0
    return-object p0

    .line 1508
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    .line 1509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto :goto_0

    .line 1513
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    .line 1514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto :goto_0

    .line 1518
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    .line 1519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto :goto_0

    .line 1523
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    .line 1524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto :goto_0

    .line 1528
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1529
    .local v10, "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1530
    .local v16, "value":I
    packed-switch v16, :pswitch_data_0

    .line 1537
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/Entity;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1533
    :pswitch_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1544
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    .line 1545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1549
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    .line 1550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1554
    :sswitch_8
    const/16 v18, 0x4a

    .line 1555
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1556
    .local v4, "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v8, 0x0

    .line 1557
    .local v8, "i":I
    :goto_1
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 1558
    .local v13, "newArray":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1561
    :cond_1
    :goto_2
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1563
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1561
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1556
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_1

    .line 1566
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1567
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1571
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    .line 1572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1576
    :sswitch_a
    const/16 v18, 0x62

    .line 1577
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1578
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    const/4 v8, 0x0

    .line 1579
    .restart local v8    # "i":I
    :goto_3
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 1580
    .restart local v13    # "newArray":[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1583
    :cond_4
    :goto_4
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 1584
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1585
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1583
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1578
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_3

    .line 1588
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1589
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1593
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :sswitch_b
    const/16 v18, 0x6a

    .line 1594
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1595
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    const/4 v8, 0x0

    .line 1596
    .restart local v8    # "i":I
    :goto_5
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 1597
    .restart local v13    # "newArray":[Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1600
    :cond_7
    :goto_6
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_9

    .line 1601
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1602
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1600
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1595
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_5

    .line 1605
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1606
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1610
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 1611
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    .line 1613
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1617
    :sswitch_d
    const/16 v18, 0x7a

    .line 1618
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1619
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    const/4 v8, 0x0

    .line 1620
    .restart local v8    # "i":I
    :goto_7
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 1621
    .restart local v13    # "newArray":[Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1624
    :cond_b
    :goto_8
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    .line 1625
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1626
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1624
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1619
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_7

    .line 1629
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v8

    .line 1630
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1634
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Ljava/lang/String;
    :sswitch_e
    const/16 v18, 0x82

    .line 1635
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1636
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    const/4 v8, 0x0

    .line 1637
    .restart local v8    # "i":I
    :goto_9
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    .line 1639
    .local v13, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    if-eqz v8, :cond_e

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1642
    :cond_e
    :goto_a
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_10

    .line 1643
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;-><init>()V

    aput-object v18, v13, v8

    .line 1644
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1645
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1642
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1636
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_9

    .line 1648
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    :cond_10
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;-><init>()V

    aput-object v18, v13, v8

    .line 1649
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1650
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    goto/16 :goto_0

    .line 1654
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    .line 1655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1659
    :sswitch_10
    const/16 v18, 0xa0

    .line 1660
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v11

    .line 1661
    .local v11, "length":I
    new-array v0, v11, [I

    move-object/from16 v17, v0

    .line 1662
    .local v17, "values":[I
    const/4 v6, 0x0

    .line 1663
    .local v6, "count":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    :goto_b
    if-ge v8, v11, :cond_12

    .line 1664
    if-eqz v8, :cond_11

    .line 1665
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1667
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1668
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1669
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_1

    .line 1676
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/Entity;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move v6, v7

    .line 1663
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_b

    .line 1673
    :pswitch_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    aput v16, v17, v7

    goto :goto_c

    .line 1681
    .end local v6    # "count":I
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    .restart local v7    # "count":I
    :cond_12
    if-eqz v7, :cond_0

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_13

    const/4 v8, 0x0

    .line 1683
    :goto_d
    if-nez v8, :cond_14

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_14

    .line 1684
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    goto/16 :goto_0

    .line 1682
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_d

    .line 1686
    :cond_14
    add-int v18, v8, v7

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 1687
    .local v13, "newArray":[I
    if-eqz v8, :cond_15

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1690
    :cond_15
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v13, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1691
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    goto/16 :goto_0

    .line 1697
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "newArray":[I
    .end local v17    # "values":[I
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v5

    .line 1698
    .local v5, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v12

    .line 1700
    .local v12, "limit":I
    const/4 v4, 0x0

    .line 1701
    .restart local v4    # "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v14

    .line 1702
    .local v14, "startPos":I
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_16

    .line 1703
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v18

    packed-switch v18, :pswitch_data_2

    goto :goto_e

    .line 1707
    :pswitch_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1711
    :cond_16
    if-eqz v4, :cond_1a

    .line 1712
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_18

    const/4 v8, 0x0

    .line 1714
    .restart local v8    # "i":I
    :goto_f
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 1715
    .restart local v13    # "newArray":[I
    if-eqz v8, :cond_17

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1718
    :cond_17
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_19

    .line 1719
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1720
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1721
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_3

    .line 1728
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1729
    const/16 v18, 0xa0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_10

    .line 1713
    .end local v8    # "i":I
    .end local v10    # "initialPos":I
    .end local v13    # "newArray":[I
    .end local v16    # "value":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_f

    .line 1725
    .restart local v8    # "i":I
    .restart local v10    # "initialPos":I
    .restart local v13    # "newArray":[I
    .restart local v16    # "value":I
    :pswitch_3
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aput v16, v13, v8

    move v8, v9

    .line 1726
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_10

    .line 1733
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :cond_19
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    .line 1735
    .end local v8    # "i":I
    .end local v13    # "newArray":[I
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1739
    .end local v4    # "arrayLength":I
    .end local v5    # "bytes":I
    .end local v12    # "limit":I
    .end local v14    # "startPos":I
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    .line 1740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1744
    :sswitch_13
    const/16 v18, 0xb2

    .line 1745
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1746
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-object/from16 v18, v0

    if-nez v18, :cond_1c

    const/4 v8, 0x0

    .line 1747
    .restart local v8    # "i":I
    :goto_11
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 1749
    .local v13, "newArray":[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    if-eqz v8, :cond_1b

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1752
    :cond_1b
    :goto_12
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_1d

    .line 1753
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;-><init>()V

    aput-object v18, v13, v8

    .line 1754
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1755
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1752
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 1746
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_11

    .line 1758
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_1d
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;-><init>()V

    aput-object v18, v13, v8

    .line 1759
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1760
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    goto/16 :goto_0

    .line 1764
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    .line 1765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1769
    :sswitch_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1770
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1771
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_4

    .line 1779
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1780
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/Entity;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1775
    :pswitch_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    .line 1776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1786
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    .line 1787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1791
    :sswitch_17
    const/16 v18, 0xd8

    .line 1792
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v11

    .line 1793
    .restart local v11    # "length":I
    new-array v0, v11, [I

    move-object/from16 v17, v0

    .line 1794
    .restart local v17    # "values":[I
    const/4 v6, 0x0

    .line 1795
    .restart local v6    # "count":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    :goto_13
    if-ge v8, v11, :cond_1f

    .line 1796
    if-eqz v8, :cond_1e

    .line 1797
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1799
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1800
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1801
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_5

    .line 1806
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/Entity;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move v6, v7

    .line 1795
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :goto_14
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_13

    .line 1803
    :pswitch_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    aput v16, v17, v7

    goto :goto_14

    .line 1811
    .end local v6    # "count":I
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    .restart local v7    # "count":I
    :cond_1f
    if-eqz v7, :cond_0

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_20

    const/4 v8, 0x0

    .line 1813
    :goto_15
    if-nez v8, :cond_21

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_21

    .line 1814
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    goto/16 :goto_0

    .line 1812
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_15

    .line 1816
    :cond_21
    add-int v18, v8, v7

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 1817
    .local v13, "newArray":[I
    if-eqz v8, :cond_22

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1820
    :cond_22
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v13, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1821
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    goto/16 :goto_0

    .line 1827
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "newArray":[I
    .end local v17    # "values":[I
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v5

    .line 1828
    .restart local v5    # "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v12

    .line 1830
    .restart local v12    # "limit":I
    const/4 v4, 0x0

    .line 1831
    .restart local v4    # "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v14

    .line 1832
    .restart local v14    # "startPos":I
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_23

    .line 1833
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v18

    packed-switch v18, :pswitch_data_6

    goto :goto_16

    .line 1835
    :pswitch_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1839
    :cond_23
    if-eqz v4, :cond_27

    .line 1840
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_25

    const/4 v8, 0x0

    .line 1842
    .restart local v8    # "i":I
    :goto_17
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 1843
    .restart local v13    # "newArray":[I
    if-eqz v8, :cond_24

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1846
    :cond_24
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_26

    .line 1847
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1848
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1849
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_7

    .line 1854
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1855
    const/16 v18, 0xd8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_18

    .line 1841
    .end local v8    # "i":I
    .end local v10    # "initialPos":I
    .end local v13    # "newArray":[I
    .end local v16    # "value":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_17

    .line 1851
    .restart local v8    # "i":I
    .restart local v10    # "initialPos":I
    .restart local v13    # "newArray":[I
    .restart local v16    # "value":I
    :pswitch_7
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aput v16, v13, v8

    move v8, v9

    .line 1852
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_18

    .line 1859
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :cond_26
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    .line 1861
    .end local v8    # "i":I
    .end local v13    # "newArray":[I
    :cond_27
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1865
    .end local v4    # "arrayLength":I
    .end local v5    # "bytes":I
    .end local v12    # "limit":I
    .end local v14    # "startPos":I
    :sswitch_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 1866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 1870
    :sswitch_1a
    const/16 v18, 0xe8

    .line 1871
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1872
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    move-object/from16 v18, v0

    if-nez v18, :cond_29

    const/4 v8, 0x0

    .line 1873
    .restart local v8    # "i":I
    :goto_19
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [J

    .line 1874
    .local v13, "newArray":[J
    if-eqz v8, :cond_28

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1877
    :cond_28
    :goto_1a
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_2a

    .line 1878
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    aput-wide v18, v13, v8

    .line 1879
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1877
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 1872
    .end local v8    # "i":I
    .end local v13    # "newArray":[J
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_19

    .line 1882
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[J
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    aput-wide v18, v13, v8

    .line 1883
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    goto/16 :goto_0

    .line 1887
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[J
    :sswitch_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v11

    .line 1888
    .restart local v11    # "length":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v12

    .line 1890
    .restart local v12    # "limit":I
    const/4 v4, 0x0

    .line 1891
    .restart local v4    # "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v14

    .line 1892
    .restart local v14    # "startPos":I
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_2b

    .line 1893
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    .line 1894
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1896
    :cond_2b
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    move-object/from16 v18, v0

    if-nez v18, :cond_2d

    const/4 v8, 0x0

    .line 1898
    .restart local v8    # "i":I
    :goto_1c
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [J

    .line 1899
    .restart local v13    # "newArray":[J
    if-eqz v8, :cond_2c

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    :cond_2c
    :goto_1d
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_2e

    .line 1903
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    aput-wide v18, v13, v8

    .line 1902
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 1897
    .end local v8    # "i":I
    .end local v13    # "newArray":[J
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_1c

    .line 1905
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[J
    :cond_2e
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    .line 1906
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1498
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa2 -> :sswitch_11
        0xa8 -> :sswitch_12
        0xb2 -> :sswitch_13
        0xba -> :sswitch_14
        0xc8 -> :sswitch_15
        0xd2 -> :sswitch_16
        0xd8 -> :sswitch_17
        0xda -> :sswitch_18
        0xe2 -> :sswitch_19
        0xe8 -> :sswitch_1a
        0xea -> :sswitch_1b
    .end sparse-switch

    .line 1530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1669
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1703
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1721
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1771
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 1801
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 1833
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    .line 1849
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    return-object v0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1003
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    .line 1004
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 1005
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 793
    if-nez p1, :cond_0

    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 796
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    .line 797
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 798
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 925
    if-nez p1, :cond_0

    .line 926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 928
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    .line 929
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 930
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 837
    if-nez p1, :cond_0

    .line 838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 840
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    .line 841
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 842
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 727
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    .line 728
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 729
    return-object p0
.end method

.method public setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 953
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    .line 954
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 955
    return-object p0
.end method

.method public setMessagingOption(I)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 763
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    .line 764
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 765
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 815
    if-nez p1, :cond_0

    .line 816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    .line 819
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 820
    return-object p0
.end method

.method public setObfuscatedGaiaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 746
    if-nez p1, :cond_0

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 749
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 750
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 751
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 900
    if-nez p1, :cond_0

    .line 901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 903
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    .line 904
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 905
    return-object p0
.end method

.method public setShouldSync(Z)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 862
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    .line 863
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 864
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 705
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    .line 706
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 707
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 981
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    .line 982
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 983
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 873
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    .line 874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    .line 875
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1212
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->source_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1214
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1215
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->id_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1217
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 1218
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1220
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 1221
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->shouldSync_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1223
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4

    .line 1224
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->type_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1226
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5

    .line 1227
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1229
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_6

    .line 1230
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->email_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1232
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 1233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 1234
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1235
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1236
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1233
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1240
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_9

    .line 1241
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->isCommunicationTarget_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1243
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 1244
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 1245
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1246
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 1247
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1244
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1251
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 1252
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 1253
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1254
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 1255
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1252
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1259
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-eqz v2, :cond_e

    .line 1260
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1262
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_10

    .line 1263
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 1264
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1265
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 1266
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1263
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1270
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    array-length v2, v2

    if-lez v2, :cond_12

    .line 1271
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 1272
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    aget-object v0, v2, v1

    .line 1273
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    if-eqz v0, :cond_11

    .line 1274
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1271
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1278
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .end local v1    # "i":I
    :cond_12
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_13

    .line 1279
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1281
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    array-length v2, v2

    if-lez v2, :cond_14

    .line 1282
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 1283
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->contactGroup:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1286
    .end local v1    # "i":I
    :cond_14
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_15

    .line 1287
    const/16 v2, 0x15

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->creationTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1289
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    array-length v2, v2

    if-lez v2, :cond_17

    .line 1290
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 1291
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    aget-object v0, v2, v1

    .line 1292
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    if-eqz v0, :cond_16

    .line 1293
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1290
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1297
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .end local v1    # "i":I
    :cond_17
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_18

    .line 1298
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1300
    :cond_18
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    .line 1301
    const/16 v2, 0x19

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingOption_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1303
    :cond_19
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1a

    .line 1304
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1306
    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_1b

    .line 1307
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 1308
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->sharingFeature:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1307
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1311
    .end local v1    # "i":I
    :cond_1b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1c

    .line 1312
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1314
    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    array-length v2, v2

    if-lez v2, :cond_1d

    .line 1315
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 1316
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->focusContactId:[J

    aget-wide v4, v3, v1

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1319
    .end local v1    # "i":I
    :cond_1d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1320
    return-void
.end method
