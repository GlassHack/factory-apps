.class final enum Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;
.super Ljava/lang/Enum;
.source "TimeZoneUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/timezone/TimeZoneUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

.field public static final enum CANCELED:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

.field public static final enum INIT:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

.field public static final enum RUNNING:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->INIT:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    .line 123
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->RUNNING:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    .line 124
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->CANCELED:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    sget-object v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->INIT:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->RUNNING:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->CANCELED:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->$VALUES:[Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->$VALUES:[Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    invoke-virtual {v0}, [Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    return-object v0
.end method
