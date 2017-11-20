.class public Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
.super Ljava/lang/Object;
.source "PicasaRequestContext.java"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final androidContext:Landroid/content/Context;

.field public final authToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "androidContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->accountName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->authToken:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    .line 31
    return-void
.end method
