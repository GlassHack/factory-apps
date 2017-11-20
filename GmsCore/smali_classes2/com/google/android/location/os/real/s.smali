.class final Lcom/google/android/location/os/real/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/location/os/real/s;->d:Lcom/google/android/location/os/real/b;

    iput p2, p0, Lcom/google/android/location/os/real/s;->a:I

    iput-object p3, p0, Lcom/google/android/location/os/real/s;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/location/os/real/s;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/location/os/real/s;->d:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget v1, p0, Lcom/google/android/location/os/real/s;->a:I

    iget-object v2, p0, Lcom/google/android/location/os/real/s;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/location/os/real/s;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ao;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method
