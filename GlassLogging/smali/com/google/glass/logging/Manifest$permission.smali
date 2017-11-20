.class public final Lcom/google/glass/logging/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final LOGGING_SECRET_ACCESS:Ljava/lang/String; = "com.google.glass.logging.permission.LOGGING_SECRET_ACCESS"

.field public static final REMOTE_BUG_REPORT:Ljava/lang/String; = "com.google.glass.logging.permission.REMOTE_BUG_REPORT"

.field public static final USER_EVENT_SERVICE:Ljava/lang/String; = "com.google.glass.logging.permission.USER_EVENT_SERVICE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
