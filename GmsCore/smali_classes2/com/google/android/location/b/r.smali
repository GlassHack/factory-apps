.class final Lcom/google/android/location/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/i;


# instance fields
.field private final a:Lcom/google/android/location/f/r;


# direct methods
.method public constructor <init>(Lcom/google/android/location/f/r;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/android/location/b/r;->a:Lcom/google/android/location/f/r;

    .line 99
    return-void
.end method


# virtual methods
.method public final synthetic a([B)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->L:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    new-instance v1, Lcom/google/android/location/b/q;

    iget-object v2, p0, Lcom/google/android/location/b/r;->a:Lcom/google/android/location/f/r;

    invoke-static {v0}, Lcom/google/android/location/f/r;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/p;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/b/q;-><init>(Lcom/google/android/location/f/p;Lcom/google/g/a/b/b/a;)V

    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)[B
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lcom/google/android/location/b/q;

    iget-object v0, p1, Lcom/google/android/location/b/q;->b:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v0

    return-object v0
.end method
