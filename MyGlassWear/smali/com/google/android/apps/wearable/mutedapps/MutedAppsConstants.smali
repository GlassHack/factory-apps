.class public Lcom/google/android/apps/wearable/mutedapps/MutedAppsConstants;
.super Ljava/lang/Object;
.source "MutedAppsConstants.java"


# static fields
.field public static final FEATURE_TAG:Ljava/lang/String; = "mutedapps"

.field public static final UNMUTABLE_PACKAGES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const-string v0, "com.google.android.gms"

    const-string v1, "com.google.android.wearable.app"

    const-string v2, "com.google.android.apps.wearable.settings"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsConstants;->UNMUTABLE_PACKAGES:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
