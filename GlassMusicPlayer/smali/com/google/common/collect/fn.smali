.class final Lcom/google/common/collect/fn;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fm;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fm;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/google/common/collect/fn;->a:Lcom/google/common/collect/fm;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 777
    new-instance v0, Lcom/google/common/collect/fo;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fo;-><init>(Lcom/google/common/collect/fn;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/google/common/collect/fn;->b(Ljava/lang/Object;)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method
