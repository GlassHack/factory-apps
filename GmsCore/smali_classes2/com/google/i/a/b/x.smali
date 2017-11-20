.class final Lcom/google/i/a/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# instance fields
.field final synthetic a:Lcom/google/g/a/b/b/c;


# direct methods
.method constructor <init>(Lcom/google/g/a/b/b/c;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/i/a/b/x;->a:Lcom/google/g/a/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/i/a/b/x;->a:Lcom/google/g/a/b/b/c;

    invoke-static {v0, p1}, Lcom/google/i/a/b/u;->a(Lcom/google/g/a/b/b/c;Ljava/io/DataInput;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/google/g/a/b/b/a;

    invoke-static {p1, p2}, Lcom/google/i/a/b/u;->a(Lcom/google/g/a/b/b/a;Ljava/io/DataOutput;)V

    return-void
.end method
