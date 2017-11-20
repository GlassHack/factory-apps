.class final Lcom/google/i/a/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/i/a/b/o;

    sget-object v1, Lcom/google/android/location/n/a;->aJ:Lcom/google/g/a/b/b/c;

    invoke-static {v1, p1}, Lcom/google/i/a/b/u;->a(Lcom/google/g/a/b/b/c;Ljava/io/DataInput;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/google/i/a/b/o;

    iget-object v0, p1, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-static {v0, p2}, Lcom/google/i/a/b/u;->a(Lcom/google/g/a/b/b/a;Ljava/io/DataOutput;)V

    return-void
.end method
