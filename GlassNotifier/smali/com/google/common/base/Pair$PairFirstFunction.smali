.class final Lcom/google/common/base/Pair$PairFirstFunction;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PairFirstFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/common/base/Pair",
        "<TA;TB;>;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/Pair$PairFirstFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Pair$PairFirstFunction",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/google/common/base/Pair$PairFirstFunction;

    invoke-direct {v0}, Lcom/google/common/base/Pair$PairFirstFunction;-><init>()V

    sput-object v0, Lcom/google/common/base/Pair$PairFirstFunction;->INSTANCE:Lcom/google/common/base/Pair$PairFirstFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/base/Pair$PairFirstFunction;, "Lcom/google/common/base/Pair$PairFirstFunction<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/google/common/base/Pair$PairFirstFunction;, "Lcom/google/common/base/Pair$PairFirstFunction<TA;TB;>;"
    sget-object v0, Lcom/google/common/base/Pair$PairFirstFunction;->INSTANCE:Lcom/google/common/base/Pair$PairFirstFunction;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/google/common/base/Pair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Pair",
            "<TA;TB;>;)TA;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/base/Pair$PairFirstFunction;, "Lcom/google/common/base/Pair$PairFirstFunction<TA;TB;>;"
    .local p1, "from":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/base/Pair$PairFirstFunction;, "Lcom/google/common/base/Pair$PairFirstFunction<TA;TB;>;"
    check-cast p1, Lcom/google/common/base/Pair;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Pair$PairFirstFunction;->apply(Lcom/google/common/base/Pair;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
