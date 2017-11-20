.class final Lcom/google/android/location/os/real/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/location/os/real/u;->b:Lcom/google/android/location/os/real/b;

    iput-object p2, p0, Lcom/google/android/location/os/real/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->b:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;)V

    .line 123
    return-void
.end method
