.class public interface abstract Lcom/google/android/maps/driveabout/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/d/a;->a:Ljava/util/Collection;

    return-void
.end method
