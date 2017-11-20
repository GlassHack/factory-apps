.class final Lcom/google/android/location/os/real/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/g/a/b/b/a;

.field final synthetic c:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/location/os/real/d;->c:Lcom/google/android/location/os/real/b;

    iput p2, p0, Lcom/google/android/location/os/real/d;->a:I

    iput-object p3, p0, Lcom/google/android/location/os/real/d;->b:Lcom/google/g/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/location/os/real/d;->c:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget v1, p0, Lcom/google/android/location/os/real/d;->a:I

    iget-object v2, p0, Lcom/google/android/location/os/real/d;->b:Lcom/google/g/a/b/b/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/collectionlib/ao;->a(ILcom/google/g/a/b/b/a;)V

    .line 154
    return-void
.end method
