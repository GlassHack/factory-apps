.class public final Lcom/google/android/location/h/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/location/h/v;

.field b:Lcom/google/android/location/h/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/google/android/location/h/v;

    invoke-direct {v0}, Lcom/google/android/location/h/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h/t;->a:Lcom/google/android/location/h/v;

    .line 102
    new-instance v0, Lcom/google/android/location/h/v;

    invoke-direct {v0}, Lcom/google/android/location/h/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h/t;->b:Lcom/google/android/location/h/v;

    return-void
.end method
