.class final Lcom/google/android/location/collectionlib/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/df;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/df;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/location/collectionlib/dh;->a:Lcom/google/android/location/collectionlib/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dh;->a:Lcom/google/android/location/collectionlib/df;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/df;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dh;->a:Lcom/google/android/location/collectionlib/df;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/df;->a(Lcom/google/android/location/collectionlib/df;)V

    .line 112
    :cond_0
    return-void
.end method
