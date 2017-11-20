.class public Lcom/google/glass/tutorial/TutorialStatusContract$Columns;
.super Ljava/lang/Object;
.source "TutorialStatusContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialStatusContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final COMPLETED_TIME:Ljava/lang/String; = "completedTime"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
