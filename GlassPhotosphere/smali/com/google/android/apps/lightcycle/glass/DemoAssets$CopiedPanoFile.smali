.class public Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;
.super Ljava/lang/Object;
.source "DemoAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/glass/DemoAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopiedPanoFile"
.end annotation


# instance fields
.field public final destination:Ljava/lang/String;

.field public final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;->source:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;->destination:Ljava/lang/String;

    .line 37
    return-void
.end method
