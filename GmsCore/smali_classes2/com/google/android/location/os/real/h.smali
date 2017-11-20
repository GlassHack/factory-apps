.class final Lcom/google/android/location/os/real/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/location/os/real/h;->a:Lcom/google/android/location/os/real/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/location/os/real/h;->a:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->c()V

    .line 194
    return-void
.end method
