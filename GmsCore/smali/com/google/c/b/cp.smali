.class final Lcom/google/c/b/cp;
.super Lcom/google/c/b/eb;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/c/b/eb;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/b/cp;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/c/b/cp;->a:I

    return v0
.end method
