.class final Lcom/google/i/a/b/y;
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
    .line 63
    iput-object p1, p0, Lcom/google/i/a/b/y;->a:Lcom/google/g/a/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/i/a/b/y;->a:Lcom/google/g/a/b/b/c;

    invoke-static {v0}, Lcom/google/i/a/b/u;->b(Lcom/google/g/a/b/b/c;)Lcom/google/android/location/f/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/location/b/a;->a(Ljava/io/DataInput;Lcom/google/android/location/f/aj;)Lcom/google/android/location/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 63
    check-cast p1, Lcom/google/android/location/b/a;

    iget-object v0, p0, Lcom/google/i/a/b/y;->a:Lcom/google/g/a/b/b/c;

    invoke-static {v0}, Lcom/google/i/a/b/u;->b(Lcom/google/g/a/b/b/c;)Lcom/google/android/location/f/aj;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/location/b/a;->a(Lcom/google/android/location/b/a;Ljava/io/DataOutput;Lcom/google/android/location/f/aj;)V

    return-void
.end method
