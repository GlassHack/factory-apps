.class final Lcom/google/c/a/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/google/c/a/am;


# direct methods
.method constructor <init>(Lcom/google/c/a/am;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/c/a/ar;->b:Lcom/google/c/a/am;

    iput-object p2, p0, Lcom/google/c/a/ar;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/c/a/ar;->b:Lcom/google/c/a/am;

    iget-object v1, p0, Lcom/google/c/a/ar;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/c/a/am;->a(Lcom/google/c/a/am;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
