.class public Lcom/google/android/apps/lightcycle/storage/StorageManagerFactory;
.super Ljava/lang/Object;
.source "StorageManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;-><init>()V

    return-object v0
.end method
