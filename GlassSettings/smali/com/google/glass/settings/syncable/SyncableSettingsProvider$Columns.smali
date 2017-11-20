.class public Lcom/google/glass/settings/syncable/SyncableSettingsProvider$Columns;
.super Ljava/lang/Object;
.source "SyncableSettingsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/syncable/SyncableSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final IS_DIRTY:Ljava/lang/String; = "is_dirty"

.field public static final LAST_UPDATED_TIME:Ljava/lang/String; = "last_updated_time"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final UNSTORED_IS_FROM_SYNC:Ljava/lang/String; = "is_from_sync"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
