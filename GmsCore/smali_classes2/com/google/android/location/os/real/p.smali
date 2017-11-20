.class final Lcom/google/android/location/os/real/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;ZZ)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/location/os/real/p;->c:Lcom/google/android/location/os/real/b;

    iput-boolean p2, p0, Lcom/google/android/location/os/real/p;->a:Z

    iput-boolean p3, p0, Lcom/google/android/location/os/real/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/location/os/real/p;->c:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget-boolean v1, p0, Lcom/google/android/location/os/real/p;->a:Z

    iget-boolean v2, p0, Lcom/google/android/location/os/real/p;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/collectionlib/ao;->a(ZZ)V

    .line 304
    return-void
.end method
