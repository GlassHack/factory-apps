.class public final Lcom/google/android/gsf/GoogleSettingsContract;
.super Ljava/lang/Object;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/GoogleSettingsContract$Partner;,
        Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;,
        Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.settings"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GoogleSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method
