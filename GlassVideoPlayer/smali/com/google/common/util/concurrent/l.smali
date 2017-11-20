.class final Lcom/google/common/util/concurrent/l;
.super Lcom/google/common/util/concurrent/k;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/k;-><init>(Lcom/google/common/util/concurrent/g;)V

    .line 131
    iput-object p1, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/lang/Object;

    .line 132
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/lang/Object;

    return-object v0
.end method
