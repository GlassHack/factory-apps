.class public final Landroid/support/v4/app/bc;
.super Landroid/support/v4/app/bm;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1636
    invoke-direct {p0}, Landroid/support/v4/app/bm;-><init>()V

    .line 1634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bc;->a:Ljava/util/ArrayList;

    .line 1637
    return-void
.end method
