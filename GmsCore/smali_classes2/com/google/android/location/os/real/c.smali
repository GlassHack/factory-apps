.class final Lcom/google/android/location/os/real/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/google/g/a/b/b/a;

.field final synthetic d:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/location/os/real/c;->d:Lcom/google/android/location/os/real/b;

    iput-object p2, p0, Lcom/google/android/location/os/real/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/location/os/real/c;->b:I

    iput-object p4, p0, Lcom/google/android/location/os/real/c;->c:Lcom/google/g/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/location/os/real/c;->d:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/os/real/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/location/os/real/c;->b:I

    iget-object v3, p0, Lcom/google/android/location/os/real/c;->c:Lcom/google/g/a/b/b/a;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;ILcom/google/g/a/b/b/a;)V

    .line 61
    return-void
.end method
