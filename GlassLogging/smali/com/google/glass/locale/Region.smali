.class public final enum Lcom/google/glass/locale/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/locale/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/locale/Region;

.field public static final enum GB:Lcom/google/glass/locale/Region;

.field public static final enum JP:Lcom/google/glass/locale/Region;

.field public static final enum US:Lcom/google/glass/locale/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/glass/locale/Region;

    const-string v1, "US"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/locale/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/locale/Region;->US:Lcom/google/glass/locale/Region;

    .line 21
    new-instance v0, Lcom/google/glass/locale/Region;

    const-string v1, "GB"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/locale/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/locale/Region;->GB:Lcom/google/glass/locale/Region;

    .line 26
    new-instance v0, Lcom/google/glass/locale/Region;

    const-string v1, "JP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/locale/Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/locale/Region;->JP:Lcom/google/glass/locale/Region;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/locale/Region;

    sget-object v1, Lcom/google/glass/locale/Region;->US:Lcom/google/glass/locale/Region;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/locale/Region;->GB:Lcom/google/glass/locale/Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/locale/Region;->JP:Lcom/google/glass/locale/Region;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/locale/Region;->$VALUES:[Lcom/google/glass/locale/Region;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/locale/Region;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/google/glass/locale/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/locale/Region;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/locale/Region;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/glass/locale/Region;->$VALUES:[Lcom/google/glass/locale/Region;

    invoke-virtual {v0}, [Lcom/google/glass/locale/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/locale/Region;

    return-object v0
.end method
