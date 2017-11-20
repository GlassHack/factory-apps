.class public abstract Lcom/google/android/clockwork/stream/StreamItemId;
.super Ljava/lang/Object;
.source "StreamItemId.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/clockwork/stream/StreamItemId;",
        ">;"
    }
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    .line 15
    return-void
.end method
