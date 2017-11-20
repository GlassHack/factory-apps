.class final enum Lcom/google/common/base/BinaryPredicates$Identity;
.super Ljava/lang/Enum;
.source "BinaryPredicates.java"

# interfaces
.implements Lcom/google/common/base/BinaryPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/BinaryPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/BinaryPredicates$Identity;",
        ">;",
        "Lcom/google/common/base/BinaryPredicate",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/BinaryPredicates$Identity;

.field public static final enum Identity:Lcom/google/common/base/BinaryPredicates$Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    new-instance v0, Lcom/google/common/base/BinaryPredicates$Identity;

    const-string v1, "Identity"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/BinaryPredicates$Identity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/BinaryPredicates$Identity;->Identity:Lcom/google/common/base/BinaryPredicates$Identity;

    .line 257
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/BinaryPredicates$Identity;

    sget-object v1, Lcom/google/common/base/BinaryPredicates$Identity;->Identity:Lcom/google/common/base/BinaryPredicates$Identity;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/BinaryPredicates$Identity;->$VALUES:[Lcom/google/common/base/BinaryPredicates$Identity;

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
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/BinaryPredicates$Identity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    const-class v0, Lcom/google/common/base/BinaryPredicates$Identity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicates$Identity;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/BinaryPredicates$Identity;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/google/common/base/BinaryPredicates$Identity;->$VALUES:[Lcom/google/common/base/BinaryPredicates$Identity;

    invoke-virtual {v0}, [Lcom/google/common/base/BinaryPredicates$Identity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/BinaryPredicates$Identity;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "o2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
