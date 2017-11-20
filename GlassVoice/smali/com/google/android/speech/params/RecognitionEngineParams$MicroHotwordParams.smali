.class public Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MicroHotwordParams"
.end annotation


# instance fields
.field private final mHotwordDataManager:Lcom/google/android/search/core/hotword/HotwordDataManager;


# direct methods
.method public constructor <init>(Lcom/google/android/search/core/hotword/HotwordDataManager;)V
    .locals 0
    .param p1, "hotwordDataManager"    # Lcom/google/android/search/core/hotword/HotwordDataManager;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;->mHotwordDataManager:Lcom/google/android/search/core/hotword/HotwordDataManager;

    .line 147
    return-void
.end method


# virtual methods
.method public getDataManager()Lcom/google/android/search/core/hotword/HotwordDataManager;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;->mHotwordDataManager:Lcom/google/android/search/core/hotword/HotwordDataManager;

    return-object v0
.end method
