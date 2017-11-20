.class public interface abstract Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;
.super Ljava/lang/Object;
.source "VoiceSearchParamsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getVoiceSearchParamsCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract registerUpdateListener(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterUpdateListener(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener",
            "<TT;>;)V"
        }
    .end annotation
.end method
