.class final Landroid/support/v4/view/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/d/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1242
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1242
    new-array v0, p1, [Landroid/support/v4/view/ViewPager$SavedState;

    return-object v0
.end method
