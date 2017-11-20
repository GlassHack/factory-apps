.class public abstract Lcom/google/android/location/collectionlib/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Runnable;

.field final b:Lcom/google/android/location/collectionlib/bz;

.field final c:Lcom/google/android/location/collectionlib/ak;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/location/collectionlib/h;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/h;-><init>(Lcom/google/android/location/collectionlib/g;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/g;->a:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lcom/google/android/location/collectionlib/g;->b:Lcom/google/android/location/collectionlib/bz;

    .line 25
    iput-object p2, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/google/android/location/collectionlib/cb;J)V
.end method

.method public abstract b()V
.end method
