.class public final Lcom/google/c/a/ct;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/c/a/bi;

.field final b:Z

.field final c:Lcom/google/c/a/cy;

.field final d:I


# direct methods
.method public constructor <init>(Lcom/google/c/a/cy;)V
    .locals 1

    sget-object v0, Lcom/google/c/a/bi;->a:Lcom/google/c/a/bi;

    invoke-direct {p0, p1, v0}, Lcom/google/c/a/ct;-><init>(Lcom/google/c/a/cy;Lcom/google/c/a/bi;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/c/a/cy;Lcom/google/c/a/bi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/c/a/ct;->c:Lcom/google/c/a/cy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/a/ct;->b:Z

    iput-object p2, p0, Lcom/google/c/a/ct;->a:Lcom/google/c/a/bi;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/c/a/ct;->d:I

    return-void
.end method
