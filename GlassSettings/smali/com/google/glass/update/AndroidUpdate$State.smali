.class public final enum Lcom/google/glass/update/AndroidUpdate$State;
.super Ljava/lang/Enum;
.source "AndroidUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/update/AndroidUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/update/AndroidUpdate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/update/AndroidUpdate$State;

.field public static final enum NOT_READY_CANCELLED:Lcom/google/glass/update/AndroidUpdate$State;

.field public static final enum NOT_READY_DONNED:Lcom/google/glass/update/AndroidUpdate$State;

.field public static final enum NOT_READY_LOW_BATTERY:Lcom/google/glass/update/AndroidUpdate$State;

.field public static final enum NOT_READY_UNPLUGGED:Lcom/google/glass/update/AndroidUpdate$State;

.field public static final enum READY:Lcom/google/glass/update/AndroidUpdate$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$State;

    const-string v1, "NOT_READY_CANCELLED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/update/AndroidUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_CANCELLED:Lcom/google/glass/update/AndroidUpdate$State;

    .line 59
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$State;

    const-string v1, "NOT_READY_UNPLUGGED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/update/AndroidUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_UNPLUGGED:Lcom/google/glass/update/AndroidUpdate$State;

    .line 61
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$State;

    const-string v1, "NOT_READY_LOW_BATTERY"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/update/AndroidUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_LOW_BATTERY:Lcom/google/glass/update/AndroidUpdate$State;

    .line 63
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$State;

    const-string v1, "NOT_READY_DONNED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/update/AndroidUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_DONNED:Lcom/google/glass/update/AndroidUpdate$State;

    .line 65
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/update/AndroidUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$State;->READY:Lcom/google/glass/update/AndroidUpdate$State;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/update/AndroidUpdate$State;

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_CANCELLED:Lcom/google/glass/update/AndroidUpdate$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_UNPLUGGED:Lcom/google/glass/update/AndroidUpdate$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_LOW_BATTERY:Lcom/google/glass/update/AndroidUpdate$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_DONNED:Lcom/google/glass/update/AndroidUpdate$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->READY:Lcom/google/glass/update/AndroidUpdate$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$State;->$VALUES:[Lcom/google/glass/update/AndroidUpdate$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/update/AndroidUpdate$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/google/glass/update/AndroidUpdate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/update/AndroidUpdate$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/update/AndroidUpdate$State;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/update/AndroidUpdate$State;->$VALUES:[Lcom/google/glass/update/AndroidUpdate$State;

    invoke-virtual {v0}, [Lcom/google/glass/update/AndroidUpdate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/update/AndroidUpdate$State;

    return-object v0
.end method
