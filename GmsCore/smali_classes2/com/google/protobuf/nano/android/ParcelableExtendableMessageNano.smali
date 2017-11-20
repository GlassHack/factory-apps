.class public abstract Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/protobuf/nano/android/a;

    invoke-direct {v0}, Lcom/google/protobuf/nano/android/a;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    return-void
.end method
