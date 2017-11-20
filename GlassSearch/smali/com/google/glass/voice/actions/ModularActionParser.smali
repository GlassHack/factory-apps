.class public Lcom/google/glass/voice/actions/ModularActionParser;
.super Ljava/lang/Object;
.source "ModularActionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModularAction(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 4
    .param p0, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;

    .prologue
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v3, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-object v2

    .line 15
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 16
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v0, v3, v1

    .line 17
    .local v0, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    if-eqz v3, :cond_2

    .line 18
    iget-object v2, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->modularActionExtension:Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    goto :goto_0

    .line 15
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
