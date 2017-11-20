.class final Lcom/google/c/c/bx;
.super Lcom/google/c/c/a;
.source "SourceFile"


# instance fields
.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p2, p0, Lcom/google/c/c/bx;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/c/c/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/c/c/bx;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
