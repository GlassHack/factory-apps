.class final Lcom/google/android/location/os/real/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/location/os/real/j;->d:Lcom/google/android/location/os/real/b;

    iput-object p2, p0, Lcom/google/android/location/os/real/j;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/location/os/real/j;->b:I

    iput-object p4, p0, Lcom/google/android/location/os/real/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/location/os/real/j;->d:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/os/real/j;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/location/os/real/j;->b:I

    iget-object v3, p0, Lcom/google/android/location/os/real/j;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    return-void
.end method
