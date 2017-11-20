.class public final enum Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
.super Ljava/lang/Enum;
.source "ServerEnvironmentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/ServerEnvironmentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

.field public static final enum AUTOPUSH:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

.field public static final enum CUSTOM:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

.field public static final enum DEV:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

.field public static final enum PROD:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

.field public static final enum QA:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->PROD:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    .line 15
    new-instance v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    const-string v1, "QA"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->QA:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    .line 16
    new-instance v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    const-string v1, "AUTOPUSH"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->AUTOPUSH:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    .line 17
    new-instance v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->DEV:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    .line 18
    new-instance v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->CUSTOM:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    sget-object v1, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->PROD:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->QA:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->AUTOPUSH:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->DEV:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->CUSTOM:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->$VALUES:[Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->$VALUES:[Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    invoke-virtual {v0}, [Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    return-object v0
.end method
