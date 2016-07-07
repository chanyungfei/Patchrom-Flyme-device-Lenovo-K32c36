.class public Lcom/android/internal/policy/impl/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field private mBackgroundFallbackResource:I

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContentScene:Landroid/transition/Scene;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field private mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mNavigationBarColor:I

.field mOutsetBottom:Landroid/util/TypedValue;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field mRomUI_HookPhoneWindow:Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

.field private mRomUI_v2_MaxHeightMajor:Landroid/util/TypedValue;

.field private mRomUI_v2_MaxHeightMinor:Landroid/util/TypedValue;

.field private mRomUI_v2_MaxWidthMajor:Landroid/util/TypedValue;

.field private mRomUI_v2_MaxWidthMinor:Landroid/util/TypedValue;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field private mStatusBarColor:I

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 303
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    .line 146
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 147
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 224
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 225
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    .line 234
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 236
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 237
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    .line 238
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    .line 239
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedStatusBarColor:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 242
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 244
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 246
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 252
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 258
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 262
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 274
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 275
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 276
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 277
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 278
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 279
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 280
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 281
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 284
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 307
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 309
    new-instance v0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;-><init>(Landroid/view/Window;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_HookPhoneWindow:Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;
    .param p4, "x4"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/util/TypedValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxHeightMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/util/TypedValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxHeightMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/util/TypedValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/util/TypedValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ContextMenuBuilder;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuDialogHelper;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4235
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4236
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_1

    .line 4261
    :cond_0
    :goto_0
    return-void

    .line 4240
    :cond_1
    if-nez p3, :cond_3

    .line 4242
    if-nez p2, :cond_2

    .line 4243
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 4244
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 4248
    :cond_2
    if-eqz p2, :cond_3

    .line 4250
    iget-object p3, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 4255
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 4258
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4259
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 671
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 672
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    .line 1076
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1078
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_0
    monitor-exit p0

    return-void

    .line 1076
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    .line 1087
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :cond_0
    monitor-exit p0

    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 4146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 4155
    :goto_0
    return-object v0

    .line 4148
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4149
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4151
    :cond_1
    const v0, 0x1020380

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 4152
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 4153
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4155
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3977
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 3978
    if-nez p2, :cond_1

    .line 3979
    const/4 v2, 0x0

    .line 3997
    :cond_0
    :goto_0
    return-object v2

    .line 3981
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3985
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 3986
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3987
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_4

    .line 3988
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3990
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3993
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 3994
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_0

    .line 3995
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 4160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 4169
    :goto_0
    return-object v0

    .line 4162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4165
    :cond_1
    const v0, 0x1020381

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 4166
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 4167
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4169
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1855
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    .line 4133
    :goto_0
    return-object v0

    .line 4130
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4131
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4133
    :cond_1
    const v0, 0x1020032

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    .prologue
    .line 1310
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1313
    :goto_0
    return v1

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1313
    const/16 v1, 0x51

    goto :goto_0
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 4009
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x0

    .line 4024
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 4025
    if-nez p2, :cond_1

    .line 4026
    const/4 v2, 0x0

    .line 4046
    :cond_0
    :goto_0
    return-object v2

    .line 4028
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4032
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 4033
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 4034
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_4

    .line 4035
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4037
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 4040
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 4041
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 4042
    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_1
    aput-object v2, v0, p1

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_1
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4174
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    .line 4179
    :goto_0
    return-object v0

    .line 4176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4177
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4179
    :cond_1
    const v0, 0x1020034

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 5
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 3950
    if-eq p1, p2, :cond_0

    .line 3963
    .end local p1    # "currentValue":Landroid/transition/Transition;
    :goto_0
    return-object p1

    .line 3953
    .restart local p1    # "currentValue":Landroid/transition/Transition;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3954
    .local v2, "transitionId":I
    move-object v1, p2

    .line 3955
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_1

    .line 3956
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 3957
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 3958
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3960
    const/4 v1, 0x0

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    move-object p1, v1

    .line 3963
    goto :goto_0
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .prologue
    .line 1721
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1723
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1724
    return-object v0

    .line 1727
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1644
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1645
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1646
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1647
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1651
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1653
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1655
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1656
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1658
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 3814
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v7, :cond_0

    .line 3815
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3816
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/high16 v8, 0x40000

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 3817
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7, v12}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 3818
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v7, :cond_0

    .line 3819
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3822
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_f

    .line 3823
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 3826
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 3828
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const v8, 0x1020382

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DecorContentParent;

    .line 3831
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_11

    .line 3832
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 3833
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 3834
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1

    .line 3835
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 3838
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 3839
    .local v3, "localFeatures":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v13, :cond_3

    .line 3840
    shl-int v7, v12, v1

    and-int/2addr v7, v3

    if-eqz v7, :cond_2

    .line 3841
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7, v1}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 3839
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3845
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 3847
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_10

    .line 3849
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 3856
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3858
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 3866
    :cond_7
    invoke-direct {p0, v9, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    .line 3867
    .local v4, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v4, :cond_8

    iget-object v7, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v7, :cond_9

    .line 3868
    :cond_8
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    .line 3890
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v7, :cond_a

    .line 3891
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 3896
    :cond_a
    invoke-virtual {p0, v13}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3897
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v7, :cond_b

    .line 3898
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x1b

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3901
    .local v6, "transitionRes":I
    if-eqz v6, :cond_14

    .line 3902
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v2

    .line 3903
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v7}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3910
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    .end local v6    # "transitionRes":I
    :cond_b
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v8, 0x1c

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3912
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x28

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3914
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v8, 0x1d

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3916
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x29

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3918
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v8, 0x1e

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3920
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x2a

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3923
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v8, 0x1f

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3925
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x2b

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3928
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v7, :cond_c

    .line 3929
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x21

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3932
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v7, :cond_d

    .line 3933
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3936
    :cond_d
    iget-wide v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_e

    .line 3937
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x25

    const/16 v9, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3941
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v7, :cond_f

    .line 3942
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3947
    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_f
    return-void

    .line 3850
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v1    # "i":I
    .restart local v3    # "localFeatures":I
    :cond_10
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3852
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 3854
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto/16 :goto_1

    .line 3871
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    :cond_11
    const v7, 0x1020016

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 3872
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    .line 3873
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_13

    .line 3874
    const v7, 0x1020035

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3876
    .local v5, "titleContainer":Landroid/view/View;
    if-eqz v5, :cond_12

    .line 3877
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3881
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_9

    .line 3882
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3879
    :cond_12
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 3885
    .end local v5    # "titleContainer":Landroid/view/View;
    :cond_13
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3906
    .restart local v6    # "transitionRes":I
    :cond_14
    new-instance v7, Landroid/transition/TransitionManager;

    invoke-direct {v7}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    goto/16 :goto_3
.end method

.method private isTranslucent()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4309
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method private launchDefaultSearch()Z
    .locals 6

    .prologue
    .line 4271
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4272
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4273
    :cond_0
    const/4 v1, 0x0

    .line 4278
    .local v1, "result":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 4281
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->launchAssistAction(ILjava/lang/String;I)Z

    move-result v1

    .line 4284
    .end local v1    # "result":Z
    :cond_1
    return v1

    .line 4275
    :cond_2
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4276
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 3968
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3973
    :goto_0
    return-object v1

    .line 3970
    :catch_0
    move-exception v0

    .line 3971
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 689
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 697
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 698
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 700
    .local v15, "isXLarge":Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 703
    .local v14, "isHoneycombApp":Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .line 708
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 709
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 711
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 698
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 700
    .restart local v15    # "isXLarge":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 715
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 716
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 721
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 728
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_6

    .line 729
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    goto :goto_0

    .line 734
    :cond_6
    const/4 v3, -0x2

    .line 735
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_f

    .line 736
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v4, :cond_d

    .line 738
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    .line 746
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 750
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 751
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_9

    .line 752
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 756
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    .line 759
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 760
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 765
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 768
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 769
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

    .line 770
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 772
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_b

    .line 779
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 792
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_b
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 794
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const/high16 v8, 0x820000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 801
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_11

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 803
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 808
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 811
    const/4 v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 812
    const v4, 0x3f19999a    # 0.6f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 816
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 740
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 742
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_3

    .line 763
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_4

    .line 781
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_10

    .line 782
    const/4 v3, -0x1

    goto :goto_5

    .line 783
    :cond_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 786
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 787
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_b

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 788
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 805
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_6
.end method

.method private openPanelsAfterRestore()V
    .locals 4

    .prologue
    .line 2129
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2131
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 2149
    :cond_0
    return-void

    .line 2136
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2137
    aget-object v2, v1, v0

    .line 2141
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    .line 2142
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2143
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_2

    .line 2144
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2145
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2136
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 1103
    :cond_0
    const/4 v0, 0x0

    .line 1125
    :cond_1
    :goto_0
    return v0

    .line 1106
    :cond_2
    const/4 v0, 0x0

    .line 1110
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    .line 1112
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1115
    :cond_4
    if-eqz v0, :cond_1

    .line 1117
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1120
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v1, :cond_1

    .line 1121
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    .prologue
    .line 4183
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    .line 4185
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    .line 4191
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    .line 4221
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 7
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1177
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1181
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_4

    .line 1182
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1184
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1186
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1187
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1190
    :cond_2
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1194
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1196
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1197
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1226
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 1201
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1202
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1203
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1204
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1210
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1212
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_3

    .line 1217
    if-eqz p1, :cond_7

    iget-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v5, :cond_6

    move v1, v3

    .line 1219
    .local v1, "newExpandedMode":Z
    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1220
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1223
    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1225
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0

    .end local v1    # "newExpandedMode":Z
    :cond_6
    move v1, v4

    .line 1217
    goto :goto_1

    :cond_7
    iget-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2105
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2106
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2107
    .local v0, "curFeatureId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2108
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2105
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2113
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2114
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .line 2121
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2085
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2086
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 2095
    :cond_0
    return-void

    .line 2090
    :cond_1
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2091
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 2092
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2090
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1631
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1632
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1634
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1637
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 1639
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1641
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    .line 455
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 456
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_0
.end method

.method private updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 4070
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 4101
    :cond_0
    :goto_0
    return-void

    .line 4074
    :cond_1
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 4076
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    .line 4080
    :cond_2
    const/4 v0, 0x0

    .line 4081
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4

    .line 4082
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4083
    if-nez v0, :cond_3

    .line 4084
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 4085
    :cond_3
    if-nez v0, :cond_4

    .line 4086
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 4088
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_6

    .line 4089
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4090
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_0

    .line 4091
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4094
    :cond_6
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_7

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_0

    .line 4097
    :cond_7
    iput-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 4098
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 4099
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 4107
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 4124
    :cond_0
    :goto_0
    return-void

    .line 4111
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 4113
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    .line 4117
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 4118
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4119
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    .line 4122
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1554
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1555
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1557
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1558
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_6

    .line 1559
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1

    .line 1560
    if-eqz v2, :cond_4

    .line 1561
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1562
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_0

    if-ge v3, v8, :cond_3

    :cond_0
    move v4, v5

    .line 1564
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1569
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    .line 1570
    if-eqz v0, :cond_5

    .line 1571
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1628
    :cond_2
    :goto_2
    return-void

    .line 1562
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 1566
    .end local v3    # "level":I
    :cond_4
    const-string v6, "PhoneWindow"

    const-string v7, "Horizontal progress bar not located in current window decor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1573
    :cond_5
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1576
    :cond_6
    const/4 v6, -0x2

    if-ne p1, v6, :cond_a

    .line 1577
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_7

    .line 1578
    if-eqz v2, :cond_8

    .line 1579
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1584
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1585
    if-eqz v0, :cond_9

    .line 1586
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1581
    :cond_8
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1588
    :cond_9
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1591
    :cond_a
    const/4 v6, -0x3

    if-ne p1, v6, :cond_c

    .line 1592
    if-eqz v2, :cond_b

    .line 1593
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1595
    :cond_b
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1597
    :cond_c
    const/4 v6, -0x4

    if-ne p1, v6, :cond_e

    .line 1598
    if-eqz v2, :cond_d

    .line 1599
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1601
    :cond_d
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1603
    :cond_e
    if-ltz p1, :cond_11

    if-gt p1, v8, :cond_11

    .line 1607
    if-eqz v2, :cond_f

    .line 1608
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1613
    :goto_4
    if-ge p1, v8, :cond_10

    .line 1614
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1610
    :cond_f
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1616
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1618
    :cond_11
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    .line 1619
    if-eqz v2, :cond_12

    .line 1620
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1625
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1622
    :cond_12
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 438
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    const-string v1, "PhoneWindow"

    const-string v2, "addContentView does not support content transitions"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 444
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 447
    :cond_2
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    .line 3810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 3811
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 889
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 900
    :goto_0
    return-void

    .line 893
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    .line 894
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 895
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 896
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 897
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 899
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1055
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1060
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 1061
    .local v0, "N":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1062
    aget-object v2, v3, v1

    .line 1063
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 1064
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1061
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1060
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1068
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 823
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 832
    :goto_0
    return-void

    .line 827
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 828
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    .line 830
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 847
    if-eqz p2, :cond_1

    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 854
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3

    .line 855
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_2

    .line 856
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 858
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_2

    .line 859
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 863
    :cond_2
    if-eqz p2, :cond_3

    .line 864
    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 868
    :cond_3
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 869
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 870
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 873
    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 875
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4

    .line 878
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 879
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 882
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_0

    .line 883
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 884
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    goto :goto_0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 4138
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4139
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4142
    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 930
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 931
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const/4 v0, 0x0

    .line 935
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 936
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 937
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 938
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 939
    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 942
    :cond_2
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 943
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 945
    :cond_3
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 946
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 949
    const/16 v2, 0x8

    if-eq p1, v2, :cond_4

    if-nez p1, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_0

    .line 951
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 952
    if-eqz v1, :cond_0

    .line 953
    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 954
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 925
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 927
    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1150
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1151
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1152
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1153
    aget-object v2, v3, v1

    .line 1154
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1158
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1151
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1152
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1158
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 3416
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 28
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 3437
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3449
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v25, 0x4

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    .line 3450
    const v25, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    xor-int/lit8 v26, v26, -0x1

    and-int v10, v25, v26

    .line 3452
    .local v10, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2b

    .line 3453
    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setLayout(II)V

    .line 3454
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3459
    :goto_0
    const/16 v25, 0x3

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 3460
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3466
    :cond_0
    :goto_1
    const/16 v25, 0x11

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 3467
    const/16 v25, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3470
    :cond_1
    const/16 v25, 0x10

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 3471
    const/16 v25, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3474
    :cond_2
    const/16 v25, 0x19

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 3475
    const/16 v25, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3478
    :cond_3
    const/16 v25, 0x9

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 3479
    const/16 v25, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    xor-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3482
    :cond_4
    const/16 v25, 0x17

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 3484
    const/high16 v25, 0x4000000

    const/high16 v26, 0x4000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3488
    :cond_5
    const/16 v25, 0x18

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 3490
    const/high16 v25, 0x8000000

    const/high16 v26, 0x8000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3494
    :cond_6
    const/16 v25, 0x16

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 3495
    const/high16 v25, 0x2000000

    const/high16 v26, 0x2000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3498
    :cond_7
    const/16 v25, 0xe

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 3499
    const/high16 v25, 0x100000

    const/high16 v26, 0x100000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3502
    :cond_8
    const/16 v26, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    const/16 v27, 0xb

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2d

    const/16 v25, 0x1

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 3505
    const/high16 v25, 0x800000

    const/high16 v26, 0x800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3508
    :cond_9
    const/16 v25, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3509
    const/16 v25, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3510
    const/16 v25, 0x30

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 3512
    :cond_a
    const/16 v25, 0x30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3515
    :cond_b
    const/16 v25, 0x32

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 3516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_c

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3517
    :cond_c
    const/16 v25, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3520
    :cond_d
    const/16 v25, 0x33

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_e

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3522
    :cond_e
    const/16 v25, 0x33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3525
    :cond_f
    const/16 v25, 0x31

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_10

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3527
    :cond_10
    const/16 v25, 0x31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3530
    :cond_11
    const/16 v25, 0x1a

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 3531
    const/16 v25, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3533
    :cond_12
    const/16 v25, 0x2d

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 3534
    const/16 v25, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3537
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "window"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    .line 3539
    .local v24, "windowService":Landroid/view/WindowManager;
    if-eqz v24, :cond_16

    .line 3540
    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 3541
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v25

    if-eqz v25, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    if-eqz v25, :cond_2e

    :cond_14
    const/16 v18, 0x1

    .line 3544
    .local v18, "shouldUseBottomOutset":Z
    :goto_3
    if-eqz v18, :cond_16

    const/16 v25, 0x34

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 3545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_15

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    .line 3546
    :cond_15
    const/16 v25, 0x34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3551
    .end local v8    # "display":Landroid/view/Display;
    .end local v18    # "shouldUseBottomOutset":Z
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3552
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    .line 3553
    .local v23, "targetSdk":I
    const/16 v25, 0xb

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2f

    const/16 v20, 0x1

    .line 3554
    .local v20, "targetPreHoneycomb":Z
    :goto_4
    const/16 v25, 0xe

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_30

    const/16 v21, 0x1

    .line 3555
    .local v21, "targetPreIcs":Z
    :goto_5
    const/16 v25, 0x15

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_31

    const/16 v22, 0x1

    .line 3556
    .local v22, "targetPreL":Z
    :goto_6
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x112000d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 3558
    .local v19, "targetHcNeedsOptions":Z
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v25

    if-eqz v25, :cond_32

    :cond_17
    const/4 v14, 0x1

    .line 3560
    .local v14, "noActionBar":Z
    :goto_7
    if-nez v20, :cond_18

    if-eqz v21, :cond_33

    if-eqz v19, :cond_33

    if-eqz v14, :cond_33

    .line 3561
    :cond_18
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setNeedsMenuKey(I)V

    .line 3568
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 3579
    if-nez v22, :cond_19

    const/16 v25, 0x22

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 3582
    const/high16 v25, -0x80000000

    const/high16 v26, -0x80000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3590
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedStatusBarColor:Z

    move/from16 v25, v0

    if-nez v25, :cond_1a

    .line 3591
    const/16 v25, 0x23

    const/high16 v26, -0x1000000

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    .line 3593
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedNavigationBarColor:Z

    move/from16 v25, v0

    if-nez v25, :cond_1b

    .line 3594
    const/16 v25, 0x24

    const/high16 v26, -0x1000000

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    .line 3597
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v25, v0

    if-nez v25, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    const/16 v26, 0xb

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1d

    .line 3599
    :cond_1c
    const/16 v25, 0x15

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 3602
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 3606
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 3608
    .local v15, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->hasSoftInputMode()Z

    move-result v25

    if-nez v25, :cond_1e

    .line 3609
    const/16 v25, 0xd

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3614
    :cond_1e
    const/16 v25, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 3617
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v25

    and-int/lit8 v25, v25, 0x2

    if-nez v25, :cond_1f

    .line 3618
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3620
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->haveDimAmount()Z

    move-result v25

    if-nez v25, :cond_20

    .line 3621
    const/16 v25, 0x0

    const/high16 v26, 0x3f000000    # 0.5f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3626
    :cond_20
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v25, v0

    if-nez v25, :cond_21

    .line 3627
    const/16 v25, 0x8

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3633
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v25

    if-nez v25, :cond_25

    .line 3634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-nez v25, :cond_24

    .line 3635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v25, v0

    if-nez v25, :cond_22

    .line 3636
    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 3639
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v25, v0

    if-nez v25, :cond_23

    .line 3640
    const/16 v25, 0x2

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 3642
    :cond_23
    const/16 v25, 0x2e

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    .line 3650
    :cond_24
    const/16 v25, 0x26

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mElevation:F

    .line 3651
    const/16 v25, 0x27

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mClipToOutline:Z

    .line 3652
    const/16 v25, 0x7

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 3658
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v9

    .line 3660
    .local v9, "features":I
    and-int/lit16 v0, v9, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_34

    .line 3661
    const v13, 0x10900ba

    .line 3718
    .local v13, "layoutResource":I
    :goto_9
    invoke-virtual {v7}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v25

    if-eqz v25, :cond_29

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_26

    .line 3720
    const v25, 0x9010002

    move/from16 v0, v25

    invoke-static {v7, v0}, Lcom/lenovo/romui/RomUI;->getTypedValueFromAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxHeightMajor:Landroid/util/TypedValue;

    .line 3724
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_27

    .line 3725
    const v25, 0x9010003

    move/from16 v0, v25

    invoke-static {v7, v0}, Lcom/lenovo/romui/RomUI;->getTypedValueFromAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxHeightMinor:Landroid/util/TypedValue;

    .line 3730
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_28

    .line 3731
    const v25, 0x9010004

    move/from16 v0, v25

    invoke-static {v7, v0}, Lcom/lenovo/romui/RomUI;->getTypedValueFromAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxWidthMajor:Landroid/util/TypedValue;

    .line 3735
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_29

    .line 3736
    const v25, 0x9010005

    move/from16 v0, v25

    invoke-static {v7, v0}, Lcom/lenovo/romui/RomUI;->getTypedValueFromAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_v2_MaxWidthMinor:Landroid/util/TypedValue;

    .line 3743
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startChanging()V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_HookPhoneWindow:Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2a

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_HookPhoneWindow:Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->setStatusIcon()V

    .line 3751
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 3752
    .local v12, "in":Landroid/view/View;
    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3753
    check-cast v12, Landroid/view/ViewGroup;

    .end local v12    # "in":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    .line 3755
    const v25, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 3756
    .local v6, "contentParent":Landroid/view/ViewGroup;
    if-nez v6, :cond_3e

    .line 3757
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "Window couldn\'t find content container view"

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3456
    .end local v6    # "contentParent":Landroid/view/ViewGroup;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "features":I
    .end local v13    # "layoutResource":I
    .end local v14    # "noActionBar":Z
    .end local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "targetHcNeedsOptions":Z
    .end local v20    # "targetPreHoneycomb":Z
    .end local v21    # "targetPreIcs":Z
    .end local v22    # "targetPreL":Z
    .end local v23    # "targetSdk":I
    .end local v24    # "windowService":Landroid/view/WindowManager;
    :cond_2b
    const v25, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    .line 3461
    :cond_2c
    const/16 v25, 0xf

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3463
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    .line 3502
    :cond_2d
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 3541
    .restart local v8    # "display":Landroid/view/Display;
    .restart local v24    # "windowService":Landroid/view/WindowManager;
    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3553
    .end local v8    # "display":Landroid/view/Display;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v23    # "targetSdk":I
    :cond_2f
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 3554
    .restart local v20    # "targetPreHoneycomb":Z
    :cond_30
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 3555
    .restart local v21    # "targetPreIcs":Z
    :cond_31
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 3558
    .restart local v19    # "targetHcNeedsOptions":Z
    .restart local v22    # "targetPreL":Z
    :cond_32
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 3563
    .restart local v14    # "noActionBar":Z
    :cond_33
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setNeedsMenuKey(I)V

    goto/16 :goto_8

    .line 3662
    .restart local v9    # "features":I
    .restart local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_34
    and-int/lit8 v25, v9, 0x18

    if-eqz v25, :cond_36

    .line 3663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35

    .line 3664
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3665
    .local v17, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    const v26, 0x1160022

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3667
    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3672
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v13    # "layoutResource":I
    :goto_a
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_9

    .line 3669
    .end local v13    # "layoutResource":I
    :cond_35
    const v13, 0x10900bc

    .restart local v13    # "layoutResource":I
    goto :goto_a

    .line 3674
    .end local v13    # "layoutResource":I
    :cond_36
    and-int/lit8 v25, v9, 0x24

    if-eqz v25, :cond_37

    and-int/lit16 v0, v9, 0x100

    move/from16 v25, v0

    if-nez v25, :cond_37

    .line 3678
    const v13, 0x10900b7

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3680
    .end local v13    # "layoutResource":I
    :cond_37
    and-int/lit16 v0, v9, 0x80

    move/from16 v25, v0

    if-eqz v25, :cond_39

    .line 3683
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_38

    .line 3684
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3685
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    const v26, 0x1160023

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3687
    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3692
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v13    # "layoutResource":I
    :goto_b
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_9

    .line 3689
    .end local v13    # "layoutResource":I
    :cond_38
    const v13, 0x10900b6

    .restart local v13    # "layoutResource":I
    goto :goto_b

    .line 3693
    .end local v13    # "layoutResource":I
    :cond_39
    and-int/lit8 v25, v9, 0x2

    if-nez v25, :cond_3c

    .line 3696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3a

    .line 3697
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3698
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    const v26, 0x1160024

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3700
    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3701
    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .end local v13    # "layoutResource":I
    .end local v17    # "res":Landroid/util/TypedValue;
    :cond_3a
    and-int/lit16 v0, v9, 0x100

    move/from16 v25, v0

    if-eqz v25, :cond_3b

    .line 3702
    const/16 v25, 0x2f

    const v26, 0x10900b5

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3706
    .end local v13    # "layoutResource":I
    :cond_3b
    const v13, 0x10900bb

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3709
    .end local v13    # "layoutResource":I
    :cond_3c
    and-int/lit16 v0, v9, 0x400

    move/from16 v25, v0

    if-eqz v25, :cond_3d

    .line 3710
    const v13, 0x10900b9

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3713
    .end local v13    # "layoutResource":I
    :cond_3d
    const v13, 0x10900b8

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3760
    .restart local v6    # "contentParent":Landroid/view/ViewGroup;
    :cond_3e
    and-int/lit8 v25, v9, 0x20

    if-eqz v25, :cond_3f

    .line 3761
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v16

    .line 3762
    .local v16, "progress":Landroid/widget/ProgressBar;
    if-eqz v16, :cond_3f

    .line 3763
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3767
    .end local v16    # "progress":Landroid/widget/ProgressBar;
    :cond_3f
    and-int/lit16 v0, v9, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_40

    .line 3768
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->registerSwipeCallbacks()V

    .line 3773
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v25

    if-nez v25, :cond_43

    .line 3775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v25, v0

    if-eqz v25, :cond_44

    .line 3776
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3780
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v25, v0

    if-eqz v25, :cond_45

    .line 3784
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 3788
    .local v11, "frame":Landroid/graphics/drawable/Drawable;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mElevation:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setElevation(F)V

    .line 3791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mClipToOutline:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 3793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 3797
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v25, v0

    if-nez v25, :cond_42

    .line 3798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 3800
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitleColor(I)V

    .line 3803
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v11    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->finishChanging()V

    .line 3805
    return-object v6

    .line 3778
    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v5    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_c

    .line 3786
    :cond_45
    const/4 v11, 0x0

    .restart local v11    # "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_d
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 4414
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1863
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4366
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 4304
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 4921
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 4438
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarColor()I
    .locals 1

    .prologue
    .line 4900
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    .prologue
    .line 4419
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 4294
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1341
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1342
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1368
    :goto_0
    return v2

    .line 1346
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    move v2, v4

    .line 1347
    goto :goto_0

    .line 1350
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1351
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    .line 1354
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_1
    move-object v2, v1

    .line 1358
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1360
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1362
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1363
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    .line 1364
    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3
    move v2, v3

    .line 1366
    goto :goto_0

    .line 1354
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_1

    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_5
    move v2, v4

    .line 1368
    goto :goto_0
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v7, 0x0

    .line 1288
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1289
    const/16 v2, 0x51

    iput v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1290
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1293
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1294
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_0

    .line 1295
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setElevation(F)V

    .line 1297
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1299
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 1238
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1241
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1243
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1244
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1245
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1247
    const/4 v5, 0x0

    .line 1248
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1249
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1250
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1251
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1252
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1259
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1260
    if-nez v5, :cond_1

    .line 1261
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1262
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1264
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1267
    :cond_2
    if-eqz v5, :cond_3

    .line 1268
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1269
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1273
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1275
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1277
    return v8

    .line 1255
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1718
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 914
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 916
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 918
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 920
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 4063
    invoke-direct {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4064
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 1971
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 624
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 625
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 626
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 627
    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 629
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 630
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 633
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    .line 634
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 639
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    .line 642
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 645
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    .line 646
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 648
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    .line 649
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 659
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 655
    .restart local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1499
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1500
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1507
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    .line 1508
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1509
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1514
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1501
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1512
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1524
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1525
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateProgressBars(I)V

    .line 1532
    :cond_1
    :goto_0
    return-void

    .line 1526
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 1527
    const v1, 0x1020035

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1528
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 1529
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1787
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1792
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 1850
    .end local p1    # "featureId":I
    :cond_1
    :goto_1
    return v2

    .line 1787
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1795
    .restart local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/16 v3, 0x18

    if-ne p2, v3, :cond_3

    move v0, v2

    .line 1799
    .local v0, "direction":I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_4

    .line 1800
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3, v0, v2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    goto :goto_1

    .line 1795
    .end local v0    # "direction":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 1802
    .restart local v0    # "direction":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_1

    .line 1809
    .end local v0    # "direction":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_1

    .line 1825
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_5

    .line 1826
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    move v2, v3

    .line 1830
    goto :goto_1

    .line 1834
    :sswitch_3
    if-gez p1, :cond_6

    move p1, v3

    .end local p1    # "featureId":I
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 1839
    .restart local p1    # "featureId":I
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1840
    if-ltz p1, :cond_0

    .line 1842
    if-eqz v1, :cond_1

    .line 1843
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 1792
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 966
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 968
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 970
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 972
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 973
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_0

    .line 974
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 978
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_0
    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1875
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1877
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_0

    .line 1878
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1883
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1966
    .end local p1    # "featureId":I
    :cond_1
    :goto_1
    return v2

    .line 1875
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1888
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    .line 1889
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, v2, v6}, Landroid/media/session/MediaController;->adjustVolume(II)V

    :goto_2
    move v2, v3

    .line 1896
    goto :goto_1

    .line 1892
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v4, v5, v2, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_2

    .line 1903
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v2, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v2, v3

    .line 1904
    goto :goto_1

    .line 1919
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_1

    .line 1920
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1921
    goto :goto_1

    .line 1928
    :sswitch_3
    if-gez p1, :cond_4

    move p1, v2

    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 1930
    goto :goto_1

    .line 1934
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_1

    .line 1935
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1936
    if-nez p1, :cond_5

    .line 1937
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1938
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_5

    .line 1941
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    move v2, v3

    .line 1942
    goto :goto_1

    .line 1945
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    move v2, v3

    .line 1946
    goto :goto_1

    .line 1956
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1959
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    :cond_6
    move v2, v3

    .line 1962
    goto :goto_1

    .line 1883
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x54 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 988
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-eqz v4, :cond_1

    .line 989
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 991
    invoke-direct {p0, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 993
    .local v3, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-nez v3, :cond_2

    .line 1050
    .end local v3    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 998
    .restart local v3    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v1, 0x0

    .line 999
    .local v1, "playSoundEffect":Z
    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1002
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1004
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v1

    .line 1040
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1043
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_9

    .line 1044
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1007
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    .line 1010
    :cond_5
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_6

    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_7

    .line 1014
    :cond_6
    iget-boolean v1, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1017
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_1

    .line 1019
    :cond_7
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_3

    .line 1020
    const/4 v2, 0x1

    .line 1021
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_8

    .line 1024
    iput-boolean v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1025
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1028
    :cond_8
    if-eqz v2, :cond_3

    .line 1030
    const v4, 0xc351

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1033
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1035
    const/4 v1, 0x1

    goto :goto_1

    .line 1046
    .end local v2    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_9
    const-string v4, "PhoneWindow"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1163
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1164
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1165
    .local v1, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1166
    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1169
    .end local v1    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 1174
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1318
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1319
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1323
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    if-eqz v0, :cond_0

    .line 1324
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1325
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1326
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_0

    .line 1327
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1321
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 676
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1131
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1132
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return v0

    .line 1135
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1142
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_0

    .line 1143
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1097
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v5

    .line 522
    :cond_1
    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 523
    goto :goto_0

    .line 526
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_3

    .line 528
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 533
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 534
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 537
    :cond_4
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_c

    :cond_5
    move v1, v4

    .line 540
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_6

    .line 543
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 546
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    .line 548
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_e

    .line 549
    :cond_7
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_8

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    .line 555
    :cond_8
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_a

    .line 556
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_9

    .line 557
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    .line 559
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 566
    :cond_a
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 567
    if-eqz v0, :cond_b

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 569
    :cond_b
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 571
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_c
    move v1, v5

    .line 537
    goto :goto_1

    .line 579
    .restart local v1    # "isActionBarMenu":Z
    :cond_d
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 586
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 590
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    .line 591
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 592
    iput-object v8, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 595
    :cond_f
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 596
    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_10

    .line 599
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 601
    :cond_10
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 606
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 608
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 609
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 610
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 614
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 615
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 616
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move v5, v4

    .line 618
    goto/16 :goto_0

    .line 606
    :cond_13
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 608
    goto :goto_3
.end method

.method public requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 320
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "requestFeature() must be called before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v0

    .line 323
    .local v0, "features":I
    shl-int v2, v4, p1

    or-int v1, v0, v2

    .line 324
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit16 v2, v1, -0x34c2

    if-eqz v2, :cond_1

    .line 328
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 332
    const/4 v2, 0x0

    .line 352
    :goto_0
    return v2

    .line 334
    :cond_2
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    .line 336
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 339
    :cond_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 340
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_4
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_5

    if-ne p1, v3, :cond_5

    .line 344
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 350
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_6
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 2035
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2041
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_2

    .line 2042
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2046
    :cond_2
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2047
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_3

    .line 2048
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2049
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2050
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2059
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_3
    :goto_1
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2060
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_4

    .line 2061
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2064
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_0

    .line 2065
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2067
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    .line 2068
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2069
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 2052
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2071
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1994
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1995
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-object v2

    .line 1999
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2000
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2001
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2004
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2005
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2006
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2007
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2017
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2018
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2019
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 2020
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2023
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_0

    .line 2024
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2025
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2026
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 4891
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4892
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4895
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4896
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 4399
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4400
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .prologue
    .line 4409
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4410
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1396
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    if-eqz v1, :cond_2

    .line 1397
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 1398
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1399
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_1

    .line 1400
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v1, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 1406
    :cond_2
    return-void

    .line 1403
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    goto :goto_0
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4051
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 4052
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4053
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 4054
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 4058
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 4059
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1388
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClipToOutline:Z

    .line 1389
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 1392
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 315
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    const/16 v3, 0xc

    .line 385
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 391
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 394
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 398
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 399
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 402
    :cond_1
    return-void

    .line 387
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 396
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 406
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0xc

    .line 414
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 420
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v1, Landroid/transition/Scene;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 423
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 427
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 428
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 431
    :cond_1
    return-void

    .line 416
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1672
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1687
    :cond_0
    :goto_0
    return-void

    .line 1675
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    .line 1676
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1678
    :cond_2
    if-eqz p1, :cond_3

    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1680
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0

    .line 1682
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1684
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0
.end method

.method public setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1700
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1703
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    .line 1704
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto :goto_0
.end method

.method public final setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 1379
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mElevation:F

    .line 1380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setElevation(F)V

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1384
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4315
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4316
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4325
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4326
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1459
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1460
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1461
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1462
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1464
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1440
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1441
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1442
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1443
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1444
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1445
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1447
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1451
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1452
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1453
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1454
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1456
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1410
    if-eqz p2, :cond_1

    .line 1411
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1412
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    .line 1413
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1414
    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1415
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1416
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1421
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1425
    if-eqz p2, :cond_2

    .line 1426
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1427
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1428
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1429
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1430
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1431
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1436
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1434
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    .prologue
    .line 3421
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3422
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3423
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3424
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3426
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3427
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 3428
    .local v0, "alpha":I
    if-ltz v0, :cond_1

    .line 3429
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 3432
    .end local v0    # "alpha":I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1470
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 1471
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1662
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    .line 1663
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1664
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1665
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1668
    :cond_0
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1713
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1691
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    .line 1692
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1693
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1696
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 4299
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 4300
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 4926
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    .line 4927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4928
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 4929
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4931
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4330
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 4331
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4320
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 4321
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4335
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4336
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4345
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4346
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4350
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4351
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4340
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4341
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 4433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4434
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 4905
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    .line 4906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedStatusBarColor:Z

    .line 4907
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 4908
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4911
    :cond_0
    invoke-static {}, Lcom/lenovo/romui/RomUI;->isPlatfromSupportRomUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4912
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_HookPhoneWindow:Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

    if-eqz v0, :cond_1

    .line 4913
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRomUI_HookPhoneWindow:Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;

    invoke-virtual {v0}, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->setStatusIcon()V

    .line 4917
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 496
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 505
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 4425
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 4426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4428
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 4429
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 373
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 358
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 362
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 363
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 4289
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 4290
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 470
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1738
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 466
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 904
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 905
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1483
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1484
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1485
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1487
    :cond_0
    return-void
.end method
