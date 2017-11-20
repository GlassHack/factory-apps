.class final Lcom/google/c/c/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/c/c/am;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/c/c/am;->a:Ljava/util/Collection;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    :cond_0
    return-object p1
.end method
