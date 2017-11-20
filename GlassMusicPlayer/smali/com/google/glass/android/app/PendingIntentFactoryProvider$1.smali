.class final Lcom/google/glass/android/app/PendingIntentFactoryProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/google/glass/android/app/PendingIntentFactory;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/app/PendingIntentFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/android/app/PendingIntentFactoryImpl;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/android/app/PendingIntentFactoryProvider$1;->get()Lcom/google/glass/android/app/PendingIntentFactory;

    move-result-object v0

    return-object v0
.end method
