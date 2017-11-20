.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;


# instance fields
.field private bitField0_:I

.field private completionLabel_:Ljava/lang/String;

.field private inputType_:I

.field private invocationMode_:I

.field private isVoiceEnabled_:Z

.field private pendingLabel_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3808
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3809
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3837
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3856
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3875
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3916
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3938
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3809
    return-void
.end method


# virtual methods
.method public final clearCompletionLabel()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3933
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3934
    return-object p0
.end method

.method public final clearInputType()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3888
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3889
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3890
    return-object p0
.end method

.method public final clearInvocationMode()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3951
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3952
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3953
    return-object p0
.end method

.method public final clearIsVoiceEnabled()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3870
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3871
    return-object p0
.end method

.method public final clearPendingLabel()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3911
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3912
    return-object p0
.end method

.method public final clearType()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3850
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3851
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3852
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3958
    if-ne p1, p0, :cond_1

    .line 3967
    :cond_0
    :goto_0
    return v0

    .line 3959
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 3960
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 3961
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3964
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3965
    :goto_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 3967
    goto :goto_0

    .line 3961
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3964
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3965
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    .line 3967
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCompletionLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3918
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 3877
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    return v0
.end method

.method public final getInvocationMode()I
    .locals 1

    .prologue
    .line 3940
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    return v0
.end method

.method public final getIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 3858
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    return v0
.end method

.method public final getPendingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 4008
    const/4 v0, 0x0

    .line 4009
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4010
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 4011
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4013
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4014
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 4015
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4017
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4018
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 4019
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4021
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4022
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 4023
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4025
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4026
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 4027
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4029
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4030
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 4031
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4033
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4034
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    .line 4035
    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 3839
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    return v0
.end method

.method public final hasCompletionLabel()Z
    .locals 1

    .prologue
    .line 3929
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasInputType()Z
    .locals 1

    .prologue
    .line 3885
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasInvocationMode()Z
    .locals 1

    .prologue
    .line 3948
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 3866
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPendingLabel()Z
    .locals 1

    .prologue
    .line 3907
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasType()Z
    .locals 1

    .prologue
    .line 3847
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3971
    .line 3972
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    add-int/lit16 v0, v0, 0x20f

    .line 3973
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 3974
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    add-int/2addr v0, v2

    .line 3975
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 3976
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 3977
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    add-int/2addr v0, v2

    .line 3978
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 3979
    return v0

    .line 3973
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 3975
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 3976
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 3978
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4043
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4044
    sparse-switch v0, :sswitch_data_0

    .line 4048
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4049
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    .line 4052
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4054
    :sswitch_0
    return-object p0

    .line 4059
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 4060
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 4067
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 4068
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 4070
    :cond_3
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    goto :goto_0

    .line 4075
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 4076
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 4080
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 4081
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    .line 4085
    :cond_4
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 4086
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 4088
    :cond_5
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    goto :goto_0

    .line 4093
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 4094
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 4098
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 4099
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 4103
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 4104
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_6

    if-ne v0, v4, :cond_7

    .line 4107
    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 4108
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto/16 :goto_0

    .line 4110
    :cond_7
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    goto/16 :goto_0

    .line 4044
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3805
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 4126
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 4120
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    return-object v0
.end method

.method public final setCompletionLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3921
    if-nez p1, :cond_0

    .line 3922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3924
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3925
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3926
    return-object p0
.end method

.method public final setInputType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3880
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3881
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3882
    return-object p0
.end method

.method public final setInvocationMode(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3943
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3944
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3945
    return-object p0
.end method

.method public final setIsVoiceEnabled(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3861
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3862
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3863
    return-object p0
.end method

.method public final setPendingLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3899
    if-nez p1, :cond_0

    .line 3900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3902
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3903
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3904
    return-object p0
.end method

.method public final setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3842
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3843
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3844
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3984
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3985
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3987
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3988
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3990
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3991
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3993
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3994
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3996
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3997
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3999
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4000
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4002
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4004
    return-void
.end method
