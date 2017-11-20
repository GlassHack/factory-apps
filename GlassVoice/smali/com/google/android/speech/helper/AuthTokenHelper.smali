.class public interface abstract Lcom/google/android/speech/helper/AuthTokenHelper;
.super Ljava/lang/Object;
.source "AuthTokenHelper.java"


# virtual methods
.method public abstract blockingGetAllTokens(Ljava/lang/String;J)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract invalidateToken(Ljava/lang/String;)V
.end method
