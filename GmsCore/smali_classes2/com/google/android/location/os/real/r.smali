.class final Lcom/google/android/location/os/real/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/location/os/real/r;->c:Lcom/google/android/location/os/real/b;

    iput p2, p0, Lcom/google/android/location/os/real/r;->a:I

    iput-object p3, p0, Lcom/google/android/location/os/real/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/location/os/real/r;->c:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget v1, p0, Lcom/google/android/location/os/real/r;->a:I

    iget-object v2, p0, Lcom/google/android/location/os/real/r;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/collectionlib/ao;->a(ILjava/lang/String;)V

    .line 92
    return-void
.end method
