.class final enum Lcom/google/common/base/BinaryPredicates$AlwaysTrue;
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
    name = "AlwaysTrue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/BinaryPredicates$AlwaysTrue;",
        ">;",
        "Lcom/google/common/base/BinaryPredicate",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

.field public static final enum AlwaysTrue:Lcom/google/common/base/BinaryPredicates$AlwaysTrue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    new-instance v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    const-string v1, "AlwaysTrue"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;->AlwaysTrue:Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    .line 224
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    sget-object v1, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;->AlwaysTrue:Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;->$VALUES:[Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

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
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/BinaryPredicates$AlwaysTrue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    const-class v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/BinaryPredicates$AlwaysTrue;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;->$VALUES:[Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    invoke-virtual {v0}, [Lcom/google/common/base/BinaryPredicates$AlwaysTrue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

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
    .line 229
    const/4 v0, 0x1

    return v0
.end method
