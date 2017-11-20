.class public final enum Lcom/google/glass/update/AndroidUpdate$InstallType;
.super Ljava/lang/Enum;
.source "AndroidUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/update/AndroidUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/update/AndroidUpdate$InstallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/update/AndroidUpdate$InstallType;

.field public static final enum AUTOMATIC:Lcom/google/glass/update/AndroidUpdate$InstallType;

.field public static final enum MANUAL:Lcom/google/glass/update/AndroidUpdate$InstallType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$InstallType;

    const-string v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/update/AndroidUpdate$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$InstallType;->AUTOMATIC:Lcom/google/glass/update/AndroidUpdate$InstallType;

    .line 73
    new-instance v0, Lcom/google/glass/update/AndroidUpdate$InstallType;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/update/AndroidUpdate$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$InstallType;->MANUAL:Lcom/google/glass/update/AndroidUpdate$InstallType;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/update/AndroidUpdate$InstallType;

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$InstallType;->AUTOMATIC:Lcom/google/glass/update/AndroidUpdate$InstallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/update/AndroidUpdate$InstallType;->MANUAL:Lcom/google/glass/update/AndroidUpdate$InstallType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/update/AndroidUpdate$InstallType;->$VALUES:[Lcom/google/glass/update/AndroidUpdate$InstallType;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/update/AndroidUpdate$InstallType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/update/AndroidUpdate$InstallType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/update/AndroidUpdate$InstallType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/update/AndroidUpdate$InstallType;->$VALUES:[Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-virtual {v0}, [Lcom/google/glass/update/AndroidUpdate$InstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/update/AndroidUpdate$InstallType;

    return-object v0
.end method
