.class public Lcom/google/glass/voice/menu/GlassMenuUsageHelper$Columns;
.super Ljava/lang/Object;
.source "GlassMenuUsageHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final COMMAND_NAME:Ljava/lang/String; = "command_literal"

.field public static final INSTALL_TIME:Ljava/lang/String; = "install_time"

.field public static final LAST_USED_TIME:Ljava/lang/String; = "last_used_time"

.field public static final USAGE_COUNT:Ljava/lang/String; = "usage_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
